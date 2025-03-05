/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.course;

import dal.CoursesDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Lessons;
import model.Section;

/**
 *
 * @author admin
 */
@WebServlet(name = "LessonServlet", urlPatterns = {"/lesson"})
public class LessonServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CoursesDAO cd = new CoursesDAO();
        HttpSession session = request.getSession();
        String courseId_raw = request.getParameter("courseId");
        String lessonId_raw = request.getParameter("id");
        try {
            int courseId = Integer.parseInt(courseId_raw);
            request.setAttribute("courseId", courseId);
            int lessonId = Integer.parseInt(lessonId_raw);
            request.setAttribute("lessonId", lessonId);
            //Get list Section
            List<Section> listSections = cd.getListSectionByCourseId(courseId);
            for (Section section : listSections) {
                List<Lessons> listLessons = cd.getListLessonBySectionId(section.getSectionId());
                section.setListLessons(listLessons); 
            }
            session.setAttribute("listSections", listSections);
            
            //Get lesson by lesson id
            Lessons lessonDetail = cd.getLessonByLessonId(lessonId);
            session.setAttribute("lessonDetail", lessonDetail);
            
        } catch (NumberFormatException e) {
        }
        request.getRequestDispatcher("views/courses/lesson.jsp").forward(request, response);
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
