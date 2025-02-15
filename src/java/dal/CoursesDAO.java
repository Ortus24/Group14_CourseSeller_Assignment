/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import model.Category;
import model.CourseVideo;
import model.Courses;

/**
 *
 * @author admin
 */
public class CoursesDAO extends DBContext {

    public List<Courses> getAllCourse() {
        List<Courses> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Courses]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("CourseID"), rs.getString("Title"), rs.getString("Description"),
                        rs.getDouble("Price"), rs.getInt("Duration"), rs.getString("Thumbnail"),
                        rs.getInt("CategoryID"), rs.getString("CreatedDate"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<CourseVideo> getAllCourseVideoByCourseId(int courseId) {
        List<CourseVideo> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[CourseVideos] WHERE CourseID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CourseVideo c = new CourseVideo(rs.getInt("VideoID"), rs.getInt("CourseID"),
                        rs.getString("VideoURL"), rs.getString("Title"),
                        rs.getInt("Duration"), rs.getString("CreatedDate"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Courses getCourseById(int id) {
        String sql = "SELECT [CourseID]\n"
                + "      ,[Title]\n"
                + "      ,[Description]\n"
                + "      ,[Price]\n"
                + "      ,[Duration]\n"
                + "      ,[Thumbnail]\n"
                + "      ,[CategoryID]\n"
                + "      ,[CreatedDate]\n"
                + "  FROM [dbo].[Courses]\n"
                + "  WHERE [CourseID] = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("CourseID"), rs.getString("Title"), rs.getString("Description"),
                        rs.getDouble("Price"), rs.getInt("Duration"), rs.getString("Thumbnail"),
                        rs.getInt("CategoryID"), rs.getString("CreatedDate"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //cac khoa hoc lien quan theo tung ki
    public Category getCategoryIdByCourseId(int courseId) {
        String sql = "SELECT CAT.*\n"
                + "FROM Categories CAT\n"
                + "JOIN Courses C ON CAT.CategoryID = C.CategoryID\n"
                + "WHERE C.CourseID = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("CategoryId"), rs.getString("CategoryName"), rs.getString("Description"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Courses> relatedCourses(int categoryId, int courseId) {
        List<Courses> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM Courses C\n"
                + "WHERE C.CategoryID = ? and C.CourseID != ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ps.setInt(2, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("CourseID"), rs.getString("Title"), rs.getString("Description"),
                        rs.getDouble("Price"), rs.getInt("Duration"), rs.getString("Thumbnail"),
                        rs.getInt("CategoryID"), rs.getString("CreatedDate"));
                list.add(c);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
