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
import model.Category;
import model.CourseVideo;
import model.Courses;
import model.RatingPercent;
import model.Review;

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

            Courses c = cd.getCourseById(courseId);
            session.setAttribute("course", c);

            List<CourseVideo> listCourseVideo = cd.getAllCourseVideoByCourseId(courseId);
            session.setAttribute("listCourseVideo", listCourseVideo);

            Category category = cd.getCategoryIdByCourseId(courseId);
            session.setAttribute("category", category);

            List<Courses> relatedCourses = cd.relatedCourses(category.getCategoryID(), courseId);
            session.setAttribute("relatedCourses", relatedCourses);

            //Total leson
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
                RatingPercent ratingPercent = cd.avgRatingPercent(courseId, i) != null ? cd.avgRatingPercent(courseId, i) : new RatingPercent(i, 0);
                listRatingPercent.add(ratingPercent);
            }
            sortByRating(listRatingPercent);
            session.setAttribute("ratingPercent", listRatingPercent);

            //Get all review
            List<Review> listReview = cd.getReviewByCourseId(courseId);
            session.setAttribute("listReview", listReview);

            //Pagination review
            String xPage = request.getParameter("page");
            int page;
            int numberPage = 4;
            int size = listReview.size();
            int num = size % numberPage == 0 ? (size / numberPage) : ((size / numberPage) + 1);
            if (xPage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xPage);
            }
            int start = (page - 1) * numberPage;
            int end = Math.min(page * numberPage, size);
            List<Review> listPaninationReviews = cd.getListReviewByPage(listReview, start, end);
            request.setAttribute("listPaninationReviews", listPaninationReviews);
            request.setAttribute("page", page);
            request.setAttribute("num", num);
        } catch (NumberFormatException e) {
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
