/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.courses;

import dal.CategoryDAO;
import dal.CourseDAO;
import dal.CourseVideosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Courses;

/**
 *
 * @author Nhat
 */
@WebServlet(name = "UpdateCourses", urlPatterns = {"/update-courses"})
public class UpdateCourses extends HttpServlet {

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
        doGet(request, response);
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
        int courseID = Integer.parseInt(request.getParameter("courseID"));

        CourseDAO coDAO = new CourseDAO();
        Courses c = coDAO.getCourseByCourseID(courseID);
//
//        CourseVideosDAO cv = new CourseVideosDAO();
//        List<Courses> listCourseVideos ;

        //Category
        CategoryDAO caDAO = new CategoryDAO();
        List<Category> listCategory = caDAO.getCategory();
        request.setAttribute("listCourse", listCategory);
        //---------//
//        
//        
//        //return page
//        List<Courses> listCourses = coDAO.getCourses();
//        int totalPage = 0;
//        for (int i = 0; i < listCourses.size(); i++) {
//            if(listCourses.get(i).getCourseID()==courseID){
//                totalPage = i+1;
//            }
//        }
//        int returnPage = totalPage/8+1;
//        if (totalPage % 8 == 0) {
//            returnPage--;
//        }
//        request.setAttribute("returnPage", returnPage);
//        //-----------//

//        //paging
//        int pageSize = 10;
//        int totalCourseVideos = listCourseVideos.size();
//        int totalPages = (int) Math.ceil((double) totalCourseVideos / pageSize);
//
//        String pageStr = request.getParameter("page");
//        int currentPage = (pageStr != null) ? Integer.parseInt(pageStr) : 1;
//
//        if (currentPage < 1) {
//            currentPage = 1;
//        }
//        if (currentPage > totalPages) {
//            currentPage = totalPages;
//        }
//
//        if (totalCourseVideos > 0) {
//            int start = (currentPage - 1) * pageSize;
//            int end = Math.min(start + pageSize, totalCourseVideos);
//            List<Courses> paginatedCourseVideos = listCourseVideos.subList(start, end);
//            request.setAttribute("listCourseVideos", paginatedCourseVideos);
//        }
//        int beforePage = Math.max(1, currentPage - 2);
//        int afterPage = Math.min(totalPages, currentPage + 2);
//        request.setAttribute("beforePage", beforePage);
//        request.setAttribute("currentPage", currentPage);
//        request.setAttribute("afterPage", afterPage);
//        request.setAttribute("totalPages", totalPages);
//        //------------//
        request.setAttribute("CourseUpdate", c);
        request.getRequestDispatcher("views/admin/courses/updatecourses.jsp").forward(request, response);
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
        int courseID = Integer.parseInt(request.getParameter("courseID"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        int price = (int) Double.parseDouble(request.getParameter("price"));
        String thumbnail = request.getParameter("thumbnail");
        int categoryID = Integer.parseInt(request.getParameter("categoryID"));
        boolean status = Boolean.parseBoolean(request.getParameter("status"));
        Courses update = new Courses(courseID, title, description, price, thumbnail, categoryID, title, status);

        //update-course
        CourseDAO coDAO = new CourseDAO();
        coDAO.updateCourse(update);
        //----------------//

        List<Courses> listCourses = coDAO.getCourses();

        int totalPage = 0;
        for (int i = 0; i < listCourses.size(); i++) {
            if (listCourses.get(i).getCourseID() == courseID) {
                totalPage = i + 1;
            }
        }
        int returnPage = totalPage / 8 + 1;
        if (totalPage % 8 == 0) {
            returnPage--;
        }

        response.sendRedirect("listcourse?page=" + returnPage);

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
