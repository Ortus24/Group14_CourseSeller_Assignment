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
 * @author Nhat
 */
public class CategoryDAO extends DBContext {

<<<<<<< HEAD
=======
    public List<Courses> getCourses() {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Courses]";
        List<Courses> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"), rs.getString("title"), rs.getString("description"),
                        rs.getInt("price"), rs.getInt("duration"), rs.getString("thumbnail"), rs.getString("createdDate"), rs.getInt("status"));
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

>>>>>>> ducday
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
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
<<<<<<< HEAD
=======

    public void insertCourse(Courses c) {
        String sql = "INSERT INTO Courses (Title, Description, Price, Duration, Thumbnail, CategoryID) VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, c.getTitle());
            ps.setString(2, c.getDescription());
            ps.setInt(3, c.getPrice());
            ps.setInt(4, c.getDuration());
            ps.setString(5, c.getThumbnail());
            ps.setInt(6, c.getCategoryID());
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
                Courses c = new Courses(rs.getInt("courseID"), rs.getString("title"), rs.getString("description"),
                        rs.getInt("price"), rs.getInt("duration"), rs.getString("thumbnail"), rs.getInt("categoryID"), rs.getString("createdDate"), rs.getInt("status"));
                return c;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        CategoryDAO categoryDAO = new CategoryDAO();
        List<Courses> listCouses = categoryDAO.getCourses();
        for (Courses listCouse : listCouses) {
            System.out.println(listCouse.getTitle());
        }
    }
>>>>>>> ducday
}
