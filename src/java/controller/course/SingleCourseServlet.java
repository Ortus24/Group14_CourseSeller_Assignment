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
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import model.Course;
import model.Lesson;
import model.RatingPercent;
import model.Review;
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

            Course course = cd.getCourseById(courseId);
            session.setAttribute("course", course);
            
            //Related course
            List<Course> relatedCourses = cd.relatedCourses(course.getCategory().getCategoryID(), courseId);
            session.setAttribute("relatedCourses", relatedCourses);
            
            //Curriculum
            
            List<Section> listSections = cd.getListSectionByCourseId(courseId);
            session.setAttribute("listSections", listSections);
            
            List<Lesson> listLessons = new ArrayList<>();
            for (Section section : listSections) {
                listLessons = cd.getListLessonBySectionId(section.getSectionId());
            }
            
            session.setAttribute("listLessons", listLessons);
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
            List<Review> listReview = cd.getReviewByCourseId(courseId);
            session.setAttribute("listReview", listReview);
        } catch (NumberFormatException e) {
            response.sendRedirect("views/errors/404.jsp");
        }
        request.getRequestDispatcher("views/courses/single-course.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
