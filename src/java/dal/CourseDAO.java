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
public class CourseDAO extends DBContext {

    public List<Courses> getCourses() {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Courses]";
        List<Courses> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"), rs.getString("title"),
                        rs.getString("description"), rs.getInt("price"),
                        rs.getString("thumbnail"), rs.getInt("categoryID"),
                        rs.getString("createdDate"),
                        rs.getBoolean("status"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    private Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void insertCourse(Courses c) {
        String sql = "INSERT INTO Courses (Title, Description, Price, Thumbnail, CategoryID, Status) VALUES (?, ?,  ?, ?, ?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, c.getTitle());
            ps.setString(2, c.getDescription());
            ps.setDouble(3, c.getPrice());
            ps.setString(4, c.getThumbnail());
            ps.setInt(5, c.getCategoryID());
            ps.setBoolean(6, c.isStatus());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateCourse(Courses c) {
        String sql = "UPDATE [dbo].[Courses] SET \n"
                + "    Title = ?,\n"
                + "    Description = ?,\n"
                + "    Price = ?,\n"
                + "    Thumbnail = ?,\n"
                + "    CategoryID = ?,\n"
                + "    Status = ?\n"
                + "WHERE CourseID = ?;";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, c.getTitle());
            ps.setString(2, c.getDescription());
            ps.setDouble(3, c.getPrice());
            ps.setString(4, c.getThumbnail());
            ps.setInt(5, c.getCategoryID());
            ps.setBoolean(6, c.isStatus());
            ps.setInt(7, c.getCourseID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteCourse(int id) {
        String sql = "DELETE FROM CourseVideos WHERE CourseID = ?;\n"
                + "DELETE FROM OrderDetails WHERE CourseID = ?;\n"
                + "DELETE FROM Reviews WHERE CourseID = ?;\n"
                + "DELETE FROM Courses WHERE CourseID = ?;";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.setInt(2, id);
            ps.setInt(3, id);
            ps.setInt(4, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
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
                        rs.getInt("price"),  rs.getString("thumbnail"),
                        rs.getInt("categoryID"), rs.getString("createdDate"), rs.getBoolean("status"));
                return c;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public Courses getCourseByCourseID(int id) {
        String sql = "SELECT * FROM [dbo].[Courses] WHERE CourseID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"), rs.getString("title"), rs.getString("description"),
                        rs.getInt("price"),  rs.getString("thumbnail"),
                        rs.getInt("categoryID"), rs.getString("createdDate"), rs.getBoolean("status"));
                return c;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

//    public static void main(String[] args) {
//        CourseDAO d = new CourseDAO();
//        System.out.println(d.getCourses().get(35).getTitle());
//    }
}
