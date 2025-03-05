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
import model.Courses;

/**
 *
 * @author Nhat
 */
public class CourseVideosDAO extends DBContext {
//
//    public List<CourseVideos> getCourseVideos() {
//        String sql = "SELECT * FROM [ASSGINMENT_PRJ301].[dbo].[CourseVideos]";
//        List<CourseVideos> list = new ArrayList<>();
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                CourseVideos cv = new CourseVideos(rs.getInt("videoID"), rs.getInt("courseID"),
//                        rs.getString("videoURL"), rs.getString("title"), rs.getInt("duration"),
//                        rs.getString("createdDate"));
//                list.add(cv);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
//    }
//
//    public List<CourseVideos> getCourseVideosByCourseID(int id) {
//        String sql = "SELECT * FROM [ASSGINMENT_PRJ301].[dbo].[CourseVideos] WHERE CourseID=?";
//        List<CourseVideos> list = new ArrayList<>();
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                CourseVideos cv = new CourseVideos(rs.getInt("videoID"), rs.getInt("courseID"),
//                        rs.getString("videoURL"), rs.getString("title"), rs.getInt("duration"),
//                        rs.getString("createdDate"));
//                list.add(cv);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
//    }
//
//    public int getCourseVideosByVideoID(int id) {
//        String sql = "SELECT * FROM [ASSGINMENT_PRJ301].[dbo].[CourseVideos] WHERE VideoID=?";
//
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                return rs.getInt("courseID");
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return -1;
//    }
//
//    public void insertCourseVideos(CourseVideos cv) {
//        String sql = "INSERT INTO CourseVideos (CourseID, VideoURL, Title, Duration) VALUES (?, ?, ?, ?)";
//
//        try (PreparedStatement ps = connection.prepareStatement(sql)) {
//            ps.setInt(1, cv.getCourseID());
//            ps.setString(2, cv.getVideoURL());
//            ps.setString(3, cv.getTitle());
//            ps.setInt(4, cv.getDuration());
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//
//    public void updateCourseVideos(CourseVideos cv) {
//        String sql = "UPDATE [ASSGINMENT_PRJ301].[dbo].[CourseVideos]\n"
//                + "SET \n"
//                + "    VideoURL = ?,\n"
//                + "    Title = ?,\n"
//                + "    Duration = ?\n"
//                + "WHERE VideoID = ?;";
//
//        try (PreparedStatement ps = connection.prepareStatement(sql)) {        
//            ps.setString(1, cv.getVideoURL());
//            ps.setString(2, cv.getTitle());
//            ps.setInt(3, cv.getDuration());
//            ps.setInt(4, cv.getVideoID());
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//
//    public void deleteCourseVideos(int videoID) {
//        String sql = "DELETE FROM [dbo].[CourseVideos] WHERE VideoID = ?";
//        try (PreparedStatement ps = connection.prepareStatement(sql)) {
//            ps.setInt(1, videoID);
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
}
