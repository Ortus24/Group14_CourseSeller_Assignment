/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.OrderDAO;

import dal.DBContext;
import java.util.List;
import java.sql.*;
import model.Item;

/**
 *
 * @author TRAN ANH HAI
 */
public class OrderDetailsDAO extends DBContext{
    
    public void insertOrderDetails(List<Item> items, int orderId) {
        String sql = "INSERT INTO OrderDetails (OrderID, CourseID, Quantity, UnitPrice, Discount) "
                   + "VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            
            // Batch insert để tối ưu hiệu suất
            for (Item item : items) {
                ps.setInt(1, orderId);
                ps.setInt(2, item.getCourses().getCourseID());
                ps.setInt(3, item.getQuantity());
                ps.setDouble(4, item.getPrice());
                ps.addBatch();
            }
            
            ps.executeBatch();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
