/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.courses.home;

import dal.CategoryDAO;
import dal.CoursesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Courses;

/**
 *
 * @author LEGION
 */
@WebServlet(name = "HomeCoursesPaging", urlPatterns = {"/homepage"})
public class HomeCoursesPaging extends HttpServlet {
    
    CoursesDAO d = new CoursesDAO();
    CategoryDAO cdao = new CategoryDAO();

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
        String indexPage = request.getParameter("index");
        String strSearch = request.getParameter("s");
        String categoriesP = request.getParameter("categoryId");
        String sortStr = request.getParameter("sort");
        int index = 1;
        if (indexPage != null && !indexPage.isEmpty()) {
            try {
                index = Integer.parseInt(indexPage);
            } catch (Exception e) {
                index = 1;
            }
        }
        //Đẩy toàn bộ category lên trang homecourse

        List<Category> listSE = cdao.getCategoryByMajor("SE");
        List<Category> listHS = cdao.getCategoryByMajor("HS");
        List<Category> listNN = cdao.getCategoryByMajor("NN");
        request.setAttribute("listSE", listSE);
        request.setAttribute("listHS", listHS);
        request.setAttribute("listNN", listNN);

        List<Courses> listCourses;
        int count;
        if (strSearch != null && !strSearch.trim().isEmpty()) {
            //Khi người dùng nhập search 
            listCourses = d.searchCourseByTitle(strSearch, index);
            count = d.getTotalCourseBySearch(strSearch);
        } else {
            int categoryId = 0;
            try {
                if (categoriesP != null && !categoriesP.isEmpty()) {
                    categoryId = Integer.parseInt(categoriesP);
                    request.setAttribute("categoriesId", categoryId);
                }
            } catch (NumberFormatException e) {
                categoryId = 0;
            }
            listCourses = d.getCoursesSortedCommon(sortStr != null ? sortStr : "", categoryId, index);
            count = d.getTotalCoursesByCategories(categoryId);
        }
        Cookie[] arr = request.getCookies();
        String txt = "";
        if(arr!= null){
            for (Cookie cookie : arr) {
               if(cookie.getName().equals("cart")){
                  txt += cookie.getValue();
               }
            }
        }
        
        int endPage = count / 9;
        if (count % 9 != 0) {
            endPage++;
        }
        //Đẩy những khóa học mới nhất 
        List<Courses> listCoursesNew = d.getNewCoursesByCreateDate();
        request.setAttribute("strSearch", strSearch);
        request.setAttribute("newCourse", listCoursesNew);
        request.setAttribute("listcourse", listCourses);
        request.setAttribute("endP", endPage);
        request.setAttribute("currentPage", index);
        request.setAttribute("sortType", sortStr);
        request.getRequestDispatcher("views/courses/course3.jsp").forward(request, response);

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
        processRequest(request, response);
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
        processRequest(request, response);
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
