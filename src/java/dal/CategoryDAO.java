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
import model.Category;
import model.Courses;

/**
 *
 * @author admin
 */
public class CategoryDAO extends DBContext {

    public List<Courses> getCourses() {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Courses]";
        List<Courses> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"), 
                                        rs.getString("title"), 
                                        rs.getString("description"), 
                                        rs.getDouble("price"), 
                                        rs.getString("thumbnail"),
                                        rs.getInt("categoryID"),
                                        rs.getString("createdDate"),
                                        rs.getBoolean("status"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    private Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public List<Category> getCategory() {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Categories]";
        List<Category> list = new ArrayList<>();

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("categoryID"), rs.getString("categoryName"), rs.getString("description"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void insertCourse(Courses c) {
        String sql = "INSERT INTO Courses (Title, Description, Price, Thumbnail, CategoryID, CreatedDate, Status) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, c.getTitle());
            ps.setString(2, c.getDescription());
            ps.setDouble(3, c.getPrice());
            ps.setString(4, c.getThumbnail());
            ps.setInt(5, c.getCategoryID());
            ps.setBoolean(6, c.isStatus());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    

    public Courses getCourseByTitle(String title) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Courses]"
                + " WHERE Title = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, title);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"), 
                                        rs.getString("title"), 
                                        rs.getString("description"), 
                                        rs.getInt("price"),  
                                        rs.getString("thumbnail"),
                                        rs.getInt("categoryID"),
                                        rs.getString("createdDate"),
                                        rs.getBoolean("status"));
                return c;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

}
