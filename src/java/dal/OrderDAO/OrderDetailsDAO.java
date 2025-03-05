/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.OrderDAO;

import dal.DBContext;
import java.util.List;
import model.Items;
import java.sql.*;

/**
 *
 * @author TRAN ANH HAI
 */
public class OrderDetailsDAO extends DBContext{
    
    public void insertOrderDetails(List<Items> items, int orderId) {
        String sql = "INSERT INTO OrderDetails (OrderID, CourseID, Quantity, UnitPrice, Discount) "
                   + "VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            
            // Batch insert để tối ưu hiệu suất
            for (Items item : items) {
                ps.setInt(1, orderId);
                ps.setInt(2, item.getCourse().getCourseID());
                ps.setInt(3, item.getQuantity());
                ps.setDouble(4, item.getUnitPrice());
                ps.setFloat(5, (float) item.getDiscount());
                ps.addBatch();
            }
            
            ps.executeBatch();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
