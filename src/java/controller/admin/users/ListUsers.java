/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.users;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Courses;
import model.Users;

/**
 *
 * @author Nhat
 */
@WebServlet(name = "ListUsers", urlPatterns = {"/list-users"})
public class ListUsers extends HttpServlet {

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
            out.println("<title>Servlet ListUsers</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListUsers at " + request.getContextPath() + "</h1>");
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
        UserDAO userDAO = new UserDAO();
        List<Users> listUsers = userDAO.getUsers();

        //paging
        int pageSize = 7;
        int totalUsers = listUsers.size();
        int totalPages = (int) Math.ceil((double) totalUsers / pageSize);

        String pageStr = request.getParameter("page");
        int currentPage = (pageStr != null) ? Integer.parseInt(pageStr) : 1;

        if (currentPage < 1) {
            currentPage = 1;
        }
        if (currentPage > totalPages) {
            currentPage = totalPages;
        }

        int start = (currentPage - 1) * pageSize;
        int end = Math.min(start + pageSize, totalUsers);

        List<Users> paginatedUsers = null;
        if (totalUsers > 0) {
            paginatedUsers = listUsers.subList(start, end);
        }

        int beforePage = Math.max(1, currentPage - 2);
        int afterPage = Math.min(totalPages, currentPage + 2);

        
        request.setAttribute("a", 35.2);
        request.setAttribute("listUsers", paginatedUsers);
        request.setAttribute("beforePage", beforePage);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("afterPage", afterPage);
        request.setAttribute("totalPages", totalPages);
        //-----------------//
        
        request.setAttribute("totalUsers", listUsers.size());
        
        request.getRequestDispatcher("views/admin/users/listusers.jsp").forward(request, response);
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
        UserDAO userDAO = new UserDAO();
        List<Users> listUsers;
        String searchQuery = request.getParameter("searchQuery");

        if (searchQuery != null && !searchQuery.trim().isEmpty()) {
            listUsers = userDAO.searchUsers(searchQuery);
        } else {
            listUsers = userDAO.getUsers();
        }

        int pageSize = 7;
        int totalUsers = listUsers.size();
        int totalPages = (int) Math.ceil((double) totalUsers / pageSize);

        String pageStr = request.getParameter("page");
        int currentPage = (pageStr != null) ? Integer.parseInt(pageStr) : 1;

        if (currentPage < 1) {
            currentPage = 1;
        }
        if (currentPage > totalPages) {
            currentPage = totalPages;
        }

        int start = (currentPage - 1) * pageSize;
        int end = Math.min(start + pageSize, totalUsers);
        List<Users> paginatedUsers = null;
        if (totalUsers > 0) {
            paginatedUsers = listUsers.subList(start, end);
        }
        int beforePage = Math.max(1, currentPage - 2);
        int afterPage = Math.min(totalPages, currentPage + 2);

        request.setAttribute("listUsers", paginatedUsers);
        request.setAttribute("beforePage", beforePage);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("afterPage", afterPage);
        request.setAttribute("totalPages", totalPages);
        
        request.setAttribute("totalUsers", listUsers.size());

        request.getRequestDispatcher("views/admin/users/listusers.jsp").forward(request, response);
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
