/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.web.login;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import util.EndCode;

/**
 *
 * @author LEGION
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

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
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String birthDate = request.getParameter("birthdate");
        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String passWord = request.getParameter("password");
        UserDAO udao = new UserDAO();
        if (firstName == null || firstName.isEmpty() || lastName == null || lastName.isEmpty() || birthDate == null || birthDate.isEmpty() || email == null || email.isEmpty() || userName == null || userName.isEmpty() || passWord == null || passWord.isEmpty()) {
            request.setAttribute("firstname", firstName);
            request.setAttribute("lastname", lastName);
            request.setAttribute("birthdate", birthDate);
            request.setAttribute("email", email);
            request.getRequestDispatcher("/views/login/register.jsp").forward(request, response);
            return;
        }
        
        User user = udao.checkUserExist(userName);
        if(user != null){
            request.setAttribute("error", "User đã tồn tại!!!");
            request.getRequestDispatcher("views/login/register.jsp").forward(request, response);
            return;
        }else{
            passWord = EndCode.toSHA1(passWord);
            udao.registerUser(firstName, lastName, birthDate, email, userName, passWord);
            request.setAttribute("success", "Đăng ký thành công!!!");
            request.getRequestDispatcher("views/login/register.jsp").forward(request, response);
            return;
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
        processRequest(request, response);
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
        processRequest(request, response);
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
