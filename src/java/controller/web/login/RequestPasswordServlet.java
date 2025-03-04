/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.web.login;

import dal.TokenDAO;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import model.Token;
import model.User;
import util.SendMailService;

/**
 *
 * @author LEGION
 */
@WebServlet(name = "RequestPasswordServlet", urlPatterns = {"/requestpassword"})
public class RequestPasswordServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RequestPasswordServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RequestPasswordServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO udao = new UserDAO();
        String email = request.getParameter("email");
        //kiểm tra email có tồn tại trong database hay không
        User user = udao.getUserByEmail(email);
        if (user == null) {
            request.setAttribute("error", "Email không tồn tại");
            request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
            return;
        }
        //Send link to this eamil
        SendMailService service = new SendMailService();
        String token = service.generateToken();
        String linkReset = "http://localhost:8080/project/resetpassword?token=" + token;
        Token newToken = new Token(token, service.expireDateTime(), false, user.getUserName());
        TokenDAO tokenDAO = new TokenDAO();
        boolean isInsert = tokenDAO.insertTokenForget(newToken);
        if (!isInsert) {
            request.setAttribute("error", "Have error in server");
            request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
            return;
        }
        boolean isSend = service.sendToEmail(email, linkReset, user.getUserName());
        if(!isSend){
            request.setAttribute("error", "Can not send request!!!");
            request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
            return;
        }
        request.setAttribute("error", "Kiểm tra hộp thư đến của bạn để biết yêu cầu.");
        request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
