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
import model.CourseVideos;

/**
 *
 * @author Nhat
 */
public class CourseVideosDAO extends DBContext {

    public List<CourseVideos> getCourseVideos() {
        String sql = "SELECT * FROM [ASSGINMENT_PRJ301].[dbo].[CourseVideos]";
        List<CourseVideos> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CourseVideos cv = new CourseVideos(rs.getInt("videoID"), rs.getInt("courseID"),
                        rs.getString("videoURL"), rs.getString("title"), rs.getInt("duration"),
                        rs.getString("createdDate"));
                list.add(cv);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<CourseVideos> getCourseVideosByCourseID(int id) {
        String sql = "SELECT * FROM [ASSGINMENT_PRJ301].[dbo].[CourseVideos] WHERE CourseID=?";
        List<CourseVideos> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CourseVideos cv = new CourseVideos(rs.getInt("videoID"), rs.getInt("courseID"),
                        rs.getString("videoURL"), rs.getString("title"), rs.getInt("duration"),
                        rs.getString("createdDate"));
                list.add(cv);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
}
