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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import model.Category;
import model.Courses;
import model.Lessons;
import model.RatingPercent;
import model.Reviews;
import model.Section;

/**
 *
 * @author admin
 */
@WebServlet(name = "SingleCourseServlet", urlPatterns = {"/singlecourse"})
public class SingleCourseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CoursesDAO cd = new CoursesDAO();
        HttpSession session = request.getSession();
        String courseId_raw = request.getParameter("id");
        try {
            int courseId = Integer.parseInt(courseId_raw);

            Courses course = cd.getCourseById(courseId);
            session.setAttribute("course", course);
            
            Category category = cd.getCategoryIdByCourseId(courseId);
            session.setAttribute("category", category);
            
            //Related course
            List<Courses> relatedCourses = cd.relatedCourses(category.getCategoryID(), courseId);
            session.setAttribute("relatedCourses", relatedCourses);

            //Curriculum
            List<Section> listSections = cd.getListSectionByCourseId(courseId);
            for (Section section : listSections) {
                List<Lessons> listLessons = cd.getListLessonBySectionId(section.getSectionId());
                section.setListLessons(listLessons);
            }
            session.setAttribute("listSections", listSections);
            //Total lesson
            int totalLesson = cd.totalLesson(courseId);
            session.setAttribute("totalLesson", totalLesson);

            //Total duration
            double totalDuration = (double) cd.totalDuration(courseId) / 60;
            session.setAttribute("totalDuration", String.format("%.1f", totalDuration));

            //Avg rating
            float avgRating = cd.avgRating(courseId);
            session.setAttribute("avgRating", String.format("%.1f", avgRating));

            //Total review
            int totalReview = cd.totalReview(courseId);
            session.setAttribute("totalReview", totalReview);

            //Review by percent
            List<RatingPercent> listRatingPercent = new ArrayList<>();
            for (int i = 5; i > 0; i--) {
                RatingPercent ratingPercent = cd.avgRatingPercent(courseId, i) != null
                        ? cd.avgRatingPercent(courseId, i) : new RatingPercent(i, 0);
                listRatingPercent.add(ratingPercent);
            }
            sortByRating(listRatingPercent);
            session.setAttribute("ratingPercent", listRatingPercent);

            //Get all review
            List<Reviews> listReview = cd.getReviewByCourseId(courseId);
            session.setAttribute("listReview", listReview);
        } catch (NumberFormatException e) {
            response.sendRedirect("views/errors/404.jsp");
        }
        request.getRequestDispatcher("views/courses/single-course.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Add review
        CoursesDAO cd = new CoursesDAO();
        HttpSession session = request.getSession();
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String date = now.format(formatter);
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void sortByRating(List<RatingPercent> listRatingPercent) {
        Collections.sort(listRatingPercent, new Comparator<RatingPercent>() {
            @Override
            public int compare(RatingPercent o1, RatingPercent o2) {
                return Integer.compare(o2.getRating(), o1.getRating()); // Sắp xếp giảm dần
            }
        });
    }
}
