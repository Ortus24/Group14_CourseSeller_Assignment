/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;
/**
 *
 * @author Nhat
 */
public class UserDAO extends DBContext {

    public List<User> getUsers() {
        String sql = "SELECT * FROM dbo.Users;";
        List<User> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getString("userName"), rs.getString("fullName"),
                        rs.getString("password"), rs.getInt("roleID"), rs.getString("image"),
                        rs.getString("email"), rs.getString("birthDay"), rs.getString("address"),
                        rs.getString("phone"), rs.getBoolean("status")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void addUsers(User user) {
        String sql = "INSERT INTO [dbo].[Users] (UserName, FullName, Password, RoleID, Image, Email, BirthDay, Address, Phone, Status)\n"
                + "VALUES \n"
                + "(?, ?, ?, ?, ?, ?, ?, ?, ?, 0);\n"+
                "insert into [dbo].[Wallets] (UserName, Balance) Values (?,0.00);\n";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {  
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getFullName());
            ps.setString(3, user.getPassWord());
            ps.setInt(4, user.getRoleId());
            ps.setString(5, user.getImage());
            ps.setString(6, user.getEmail());
            ps.setDate(7,  convertStringToDate(user.getBirthDay()));
            ps.setString(8, user.getAddress());
            ps.setString(9, user.getPhoneNumber());
            ps.setString(10, user.getUserName());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<User> searchUsers(String keyword) {
        String sql = "SELECT * FROM [dbo].[Users] WHERE FullName like ?";
        List<User> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getString("userName"), rs.getString("fullName"),
                        rs.getString("password"), rs.getInt("roleID"), rs.getString("image"),
                        rs.getString("email"), rs.getString("birthDay"), rs.getString("address"),
                        rs.getString("phone"), rs.getBoolean("status")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void deleteUsers(String[] listDelete) {
        String sql = "DELETE FROM WalletTransactions\n"
                + "WHERE WalletID IN (SELECT WalletID FROM Wallets WHERE UserName = ?);\n"
                + "DELETE FROM Wallets WHERE UserName = ?;\n"
                + "DELETE FROM Reviews WHERE UserName = ?;\n"
                + "DELETE FROM OrderDetails\n"
                + "WHERE OrderID IN (SELECT OrderID FROM Orders WHERE UserName = ?);\n"
                + "DELETE FROM Orders WHERE UserName = ?;\n"
                + "DELETE FROM Users WHERE UserName = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            for (int i = 0; i < listDelete.length; i++) {
                ps.setString(1, listDelete[i]);
                ps.setString(2, listDelete[i]);
                ps.setString(3, listDelete[i]);
                ps.setString(4, listDelete[i]);
                ps.setString(5, listDelete[i]);
                ps.setString(6, listDelete[i]);
                ps.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static Date convertStringToDate(String dateStr) {
        try {
            // Định dạng phù hợp với chuỗi "24/11/2006"
            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
            java.util.Date parsedDate = format.parse(dateStr);
            
            // Chuyển đổi sang java.sql.Date để sử dụng với database
            return new java.sql.Date(parsedDate.getTime());
        } catch (ParseException e) {
            System.out.println("Lỗi chuyển đổi ngày: " + e.getMessage());
            return null; // Hoặc ném exception tùy theo cách xử lý
        }
    }
    
//    public static void main(String[] args) {
//        UserDAO u =new UserDAO();
//        u.addUsers(new User("nhathe186939", "nguyen nhat", "123", 0, "null", "nhatnlhe186939@gmail.com", "24/11/2006", "Lao Cai", "0369880798", true));
//        
//    }

}
