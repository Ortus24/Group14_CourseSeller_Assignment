/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.CourseDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Courses;

/**
 *
 * @author Nhat
 */
@WebServlet(name = "ListCourse", urlPatterns = {"/listcourse"})
public class ListCourse extends HttpServlet {

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
            out.println("<title>Servlet ManagerCourse</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManagerCourse at " + request.getContextPath() + "</h1>");
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
        CourseDAO d = new CourseDAO();
        List<Courses> listCourses = d.getCourses();
        
        int pageSize = 8; 
        int totalCourses = listCourses.size();
        int totalPages = (int) Math.ceil((double) totalCourses / pageSize);

        String pageStr = request.getParameter("page");
        int currentPage = (pageStr != null) ? Integer.parseInt(pageStr) : 1;

        if (currentPage < 1) {
            currentPage = 1;
        }
        if (currentPage > totalPages) {
            currentPage = totalPages;
        }

        int start = (currentPage - 1) * pageSize;
        int end = Math.min(start + pageSize, totalCourses);

        List<Courses> paginatedCourses = listCourses.subList(start, end);

        int beforePage = Math.max(1, currentPage - 2);
        int afterPage = Math.min(totalPages, currentPage + 2);

        request.setAttribute("beforePage", beforePage);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("afterPage", afterPage);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("listcourse", paginatedCourses);

        request.getRequestDispatcher("views/admin/listcourses.jsp").forward(request, response);
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
