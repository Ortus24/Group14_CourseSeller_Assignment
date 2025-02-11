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
import model.Courses;

/**
 *
 * @author Nhat
 */
@WebServlet(name = "AddCourse", urlPatterns = {"/addcourses"})
public class AddCourse extends HttpServlet {

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
            out.println("<title>Servlet AddCourse</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCourse at adsasdasdasdasd" + request.getContextPath() + "</h1>");
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
        doPost(request, response);
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
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String duration = request.getParameter("duration");
        String thumbnail = request.getParameter("thumbnail");
        String categoryID = request.getParameter("categoryID");
        String createdDate = request.getParameter("createdDate");

        CourseDAO d = new CourseDAO();

        int priceInt = Integer.parseInt(price);
        int durationInt = Integer.parseInt(duration);
        int categoryIDInt = Integer.parseInt(categoryID);

        Courses courses = d.getCourseByTitle(title);
        if (courses == null) {
            Courses newCourses = new Courses(32, title, description, priceInt, durationInt, thumbnail, categoryIDInt, createdDate);
            d.insertCourse(newCourses);
            response.sendRedirect("listcourse");
        } else {
            request.setAttribute("errorTitle", "*Id must be existes!");
            request.getRequestDispatcher("/addcourse").forward(request, response);
        }
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
