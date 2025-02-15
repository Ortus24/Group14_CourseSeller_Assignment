/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.course;

import dal.CoursesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Category;
import model.CourseVideo;
import model.Courses;

/**
 *
 * @author admin
 */
@WebServlet(name="SingleCourseServlet", urlPatterns={"/singlecourse"})
public class SingleCourseServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CoursesDAO cd = new CoursesDAO();
        HttpSession session = request.getSession();
        String courseId_raw = request.getParameter("id");
        try {
            int courseId = Integer.parseInt(courseId_raw);
            
            Courses c = cd.getCourseById(courseId);
            request.setAttribute("course", c);
            
            List<CourseVideo> listCourseVideo = cd.getAllCourseVideoByCourseId(courseId);
            request.setAttribute("listCourseVideo", listCourseVideo);
            
            Category category = cd.getCategoryIdByCourseId(courseId);
            request.setAttribute("category", category);
            
            List<Courses> relatedCourses = cd.relatedCourses(category.getCategoryID(), courseId);
            request.setAttribute("relatedCourses", relatedCourses);
           
            //tong bai hoc
            
            
        } catch (NumberFormatException e) {
        } 
        request.getRequestDispatcher("views/courses/single-course.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
