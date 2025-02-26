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
import model.RatingPercent;

/**
 *
 * @author admin
 */
public class CoursesDAO extends DBContext {

    //Get all course
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

    //Get course video by video id
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

    //Get course by course id
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

    //Get category by course id
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

    //Widget start
    //Related course
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

    //Total duration
    public int totalDuration(int courseId) {
        String sql = "SELECT SUM(Duration) AS DurationSum\n"
                + "FROM CourseVideos\n"
                + "WHERE CourseID = ?;";
        int sum = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sum = rs.getInt("DurationSum");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return sum;
    }

    //Widget end
    //Lesson start
    //Total lesson
    public int totalLesson(int courseId) {
        String sql = "SELECT COUNT(*) AS LessonCount\n"
                + "FROM CourseVideos\n"
                + "WHERE CourseID = ?;";
        int sum = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sum = rs.getInt("LessonCount");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return sum;
    }

    //get lesson by course video id
    public CourseVideo getLessonByCourseVideoId(int courseVideoId) {
        String sql = "SELECT *\n"
                + "FROM CourseVideos\n"
                + "WHERE VideoID = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseVideoId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CourseVideo c = new CourseVideo(rs.getInt("VideoID"), rs.getInt("CourseID"),
                        rs.getString("VideoURL"), rs.getString("Title"),
                        rs.getInt("Duration"), rs.getString("CreatedDate"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    //Lesson end

    //Reviews start
    //Avg rating by course id
    public float avgRating(int courseId) {
        String sql = "SELECT AVG(Rating) AS AverageRating\n"
                + "FROM [ASSGINMENT_PRJ301].[dbo].[Reviews]\n"
                + "WHERE CourseID = ?;";
        float res = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = rs.getFloat("AverageRating");
            }
            return res;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return res;
    }

    //Total review by course id
    public int totalReview(int courseId) {
        String sql = "SELECT COUNT(ReviewID) AS TotalReviews\n"
                + "FROM [ASSGINMENT_PRJ301].[dbo].[Reviews]\n"
                + "WHERE CourseID = ?;";
        int res = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = rs.getInt("TotalReviews");
            }
            return res;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return res;
    }

    //Avg rating star (percent) by course id 
    public List<RatingPercent> avgRatingPercent(int courseId) {
        List<RatingPercent> list = new ArrayList<>();
        String sql = "SELECT Rating, \n"
           + "ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Reviews WHERE CourseID = ?)), 1) AS Percentage\n"
           + "FROM Reviews\n"
           + "WHERE CourseID = ?\n"
           + "GROUP BY Rating\n"
           + "ORDER BY Rating DESC;";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ps.setInt(2, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RatingPercent rp = new RatingPercent(rs.getInt("Rating"), rs.getFloat("Percentage"));
                list.add(rp);
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //Total comment by course id
    
    //Get review by user name and by course id
    //Get user by course id
    //Review end 
    public static void main(String[] args) {
        CoursesDAO d = new CoursesDAO();
        System.out.println(d.avgRatingPercent(1).get(0).getPercent());
    }
}
