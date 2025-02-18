/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin.coursevideos;

import dal.CourseVideosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.CourseVideos;
import model.Courses;

/**
 *
 * @author Nhat
 */
@WebServlet(name="DeleteCourseVideos", urlPatterns={"/delete-course-videos"})
public class DeleteCourseVideos extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet DeleteCourseVideos</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteCourseVideos at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

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
        int videoID = Integer.parseInt(request.getParameter("videoID"));
        
        CourseVideosDAO cvDAO = new CourseVideosDAO();
        int courseID = cvDAO.getCourseVideosByVideoID(videoID);
        List<CourseVideos> listCourses = cvDAO.getCourseVideos();
        
        
        int totalPage = 0;
        for (int i = 0; i < listCourses.size(); i++) {
            if(listCourses.get(i).getVideoID()==videoID){
                totalPage = i+1;
            }
        }
        int returnPage = totalPage/10+1;
        if (totalPage % 10 == 0  ) {
            returnPage--;
        }
        
        //delete video
        cvDAO.deleteCourseVideos(videoID);
        //---------------//
        
        response.sendRedirect("update-courses?courseID="+courseID+"&page="+returnPage);
        
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
        processRequest(request, response);
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
