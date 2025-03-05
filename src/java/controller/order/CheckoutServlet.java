/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.order;

import dal.DBContext;
import dal.OrderDAO.OrderDAO;
import dal.OrderDAO.OrderDetailsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Date;
import model.Cart;
import model.Order;
import model.User;
import java.sql.*;

/**
 *
 * @author TRAN ANH HAI
 */
@WebServlet(name="CheckoutServlet", urlPatterns={"/checkout"})
public class CheckoutServlet extends HttpServlet {
   
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
            out.println("<title>Servlet CheckoutServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckoutServlet at " + request.getContextPath () + "</h1>");
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
        processRequest(request, response);
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
//        processRequest(request, response);
        Connection conn = null;
        try {
            conn = new DBContext().connection;
            conn.setAutoCommit(false); // Tắt chế độ tự commit
            
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            Cart cart = (Cart) session.getAttribute("cart");
            
            // Thêm đơn hàng
            OrderDAO orderDAO = new OrderDAO();
            Order order = new Order();
            order.setUserName(user.getUserName());
            order.setOrderDate(new Date());
            order.setTotalAmount(cart.getTotalPrice());
            order.setStatus(true); // Ví dụ: đã thanh toán
            
            int orderId = orderDAO.insertOrder(order);
            
            if (orderId == -1) {
                conn.rollback();
                response.sendRedirect("views/order/error.jsp");
                return;
            }
            
            // Thêm chi tiết đơn hàng
            OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
            orderDetailsDAO.insertOrderDetails(cart.getItems(), orderId);
            
            conn.commit(); // Commit tất cả thay đổi
            cart.clearCart();
            
            // Xử lý cookie và chuyển hướng
            Cookie cartCookie = new Cookie("cart", "");
            cartCookie.setMaxAge(0);
            response.addCookie(cartCookie);
            response.sendRedirect("views/order/confirmation.jsp");
            
        } catch (SQLException ex) {
            try {
                if (conn != null) conn.rollback();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            response.sendRedirect("views/order/error.jsp");
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
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
