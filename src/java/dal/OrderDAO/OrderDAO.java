/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.OrderDAO;

import dal.DBContext;
import model.Order;
import java.sql.*;

/**
 *
 * @author TRAN ANH HAI
 */
public class OrderDAO extends DBContext{
    
    public int insertOrder(Order order) {
        String sql = "INSERT INTO Orders (UserName, OrderDate, TotalAmount, Status) "
                   + "VALUES (?, ?, ?, ?)";
        try {
            
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            // Set parameters
            ps.setString(1, order.getUserName());
            ps.setString(2, order.getOrderDate());
            ps.setDouble(3, order.getTotalAmount());
            ps.setBoolean(4, order.isStatus());
            
            int affectedRows = ps.executeUpdate();
            
            if (affectedRows > 0) {
                try (ResultSet rs = ps.getGeneratedKeys()) {
                    if (rs.next()) {
                        return rs.getInt(1); // Trả về OrderID vừa được sinh ra
                    }
                }
            }
            return -1; // Thất bại
        } catch (SQLException ex) {
            ex.printStackTrace();
            return -1;
        }
    }

}
