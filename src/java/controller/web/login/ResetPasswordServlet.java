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
import jakarta.servlet.http.HttpSession;
import model.Token;
import model.User;
import util.EndCode;
import util.SendMailService;

/**
 *
 * @author LEGION
 */
@WebServlet(name = "ResetPasswordServlet", urlPatterns = {"/resetpassword"})
public class ResetPasswordServlet extends HttpServlet {

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
            out.println("<title>Servlet ResetPasswordServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ResetPasswordServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    TokenDAO tokenDAO = new TokenDAO();
    UserDAO userDAO = new UserDAO();

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
        String token = request.getParameter("token");
        HttpSession session = request.getSession();
        if (token != null) {
            Token tokenForgetPassword = tokenDAO.getTokenPassword(token);
            SendMailService service = new SendMailService();
            if (tokenForgetPassword == null) {
                request.setAttribute("mess", "Token invalid!!!");
                request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
                return;
            }
            if (tokenForgetPassword.isIsUser()) {
                request.setAttribute("mess", "Token has been used!!!");
                request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
                return;
            }
            if (service.isExpireTime(tokenForgetPassword.getExpiryTime())) {
                request.setAttribute("mess", "Token is expiry time");
                request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
                return;
            }
            User user = userDAO.getUserByUserName(tokenForgetPassword.getUserName());
            request.setAttribute("email", user.getEmail());
            session.setAttribute("token", tokenForgetPassword.getToken());
            request.getRequestDispatcher("views/login/reset-password.jsp").forward(request, response);
            return;
        } else {
            request.setAttribute("mess", "Token is invalid or expired!");
            request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);

        }
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
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String cfpassword = request.getParameter("passwordcf");
        if (!password.equals(cfpassword)) {
            request.setAttribute("mess", "Password must equals same password");
            request.setAttribute("email", email);
            request.getRequestDispatcher("views/login/reset-password.jsp").forward(request, response);
            return;
        }
        HttpSession session = request.getSession();
        String tokenString = (String) session.getAttribute("token");
        Token tokenForgetPassword = tokenDAO.getTokenPassword(tokenString);
        SendMailService service = new SendMailService();
        if (tokenForgetPassword == null) {
            request.setAttribute("mess", "Token Invalid!!!");
            request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
            return;
        }
        if (tokenForgetPassword.isIsUser()) {
            request.setAttribute("mess", "Token has been used!!!");
            request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
            return;
        }
        if (service.isExpireTime(tokenForgetPassword.getExpiryTime())) {
            request.setAttribute("mess", "Token is expiry time");
            request.getRequestDispatcher("views/login/request-password.jsp").forward(request, response);
            return;
        }
        //update is used of token
        Token tokenForgetPass = new Token();
        tokenForgetPass.setToken((String) session.getAttribute("token"));
        tokenForgetPass.setIsUser(true);
        password = EndCode.toSHA1(password);
        userDAO.updatePassword(email, password);
        tokenDAO.updateStatus(tokenForgetPass);
        //save user in session and redirect to home
        request.setAttribute("mess", "Reset password successfully. Please login again!!!");

        request.getRequestDispatcher("views/login/reset-password.jsp").forward(request, response);

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
