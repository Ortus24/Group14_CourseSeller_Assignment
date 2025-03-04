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
import model.Users;

/**
 *
 * @author Nhat
 */
public class UserDAO extends DBContext {

    public List<Users> getUsers() {
        String sql = "SELECT * FROM [ASSGINMENT_PRJ301].[dbo].[Users]";
        List<Users> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Users(rs.getString("userName"), rs.getString("fullName"),
                        rs.getString("password"), rs.getInt("roleID"), rs.getString("image"),
                        rs.getString("email"), rs.getDate("birthDay"), rs.getString("address"),
                        rs.getString("phone"), rs.getBoolean("status")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void addUsers(Users user) {
        String sql = "INSERT INTO [ASSGINMENT_PRJ301].[dbo].[Users] (UserName, FullName, Password, RoleID, Image, Email, BirthDay, Address, Phone, Status)\n"
                + "VALUES \n"
                + "(?, ?, ?, ?, ?, ?, ?, ?, ?, 0);\n"+
                "insert into [ASSGINMENT_PRJ301].[dbo].[Wallets] (UserName, Balance) Values (?,0.00);\n";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getFullName());
            ps.setString(3, user.getPassword());
            ps.setInt(4, user.getRoleID());
            ps.setString(5, user.getImage());
            ps.setString(6, user.getEmail());
            ps.setDate(7, (Date) user.getBirthDay());
            ps.setString(8, user.getAddress());
            ps.setString(9, user.getPhone());
            ps.setString(10, user.getUserName());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Users> searchUsers(String keyword) {
        String sql = "SELECT * FROM [ASSGINMENT_PRJ301].[dbo].[Users] WHERE FullName like ?";
        List<Users> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Users(rs.getString("userName"), rs.getString("fullName"),
                        rs.getString("password"), rs.getInt("roleID"), rs.getString("image"),
                        rs.getString("email"), rs.getDate("birthDay"), rs.getString("address"),
                        rs.getString("phone"), rs.getBoolean("status")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[] args) {
        UserDAO u =new UserDAO();
        Date d = new Date(2005, 3, 6);
        u.addUsers(new Users("test", "thu lan 2", "123123", 0, "adabndbas", "asd@gmail.com",d , "123123", "123", true));
    }

}
