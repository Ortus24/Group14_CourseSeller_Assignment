/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Courses;
import java.sql.*;

/**
 *
 * @author TRAN ANH HAI
 */
public class CourseDAO extends DBContext{
    
    public Courses getCourseById(int courseId) {
        String sql = "SELECT * FROM Courses WHERE CourseID = ?";
        Courses course = null;

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            // Thiết lập tham số cho câu lệnh SQL
            ps.setInt(1, courseId);

            // Thực thi truy vấn
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    // Tạo đối tượng Courses từ kết quả truy vấn
                    course = new Courses();
                    course.setCourseID(rs.getInt("CourseID"));
                    course.setTitle(rs.getString("Title"));
                    course.setDescription(rs.getString("Description"));
                    course.setPrice(rs.getInt("Price"));
                    course.setThumbnail(rs.getString("Thumbnail"));
                    course.setCategoryID(rs.getInt("CategoryID"));
                    course.setCreatedDate(rs.getString("CreatedDate"));
                    course.setStatus(rs.getBoolean("Status"));
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return course; // Trả về đối tượng Courses hoặc null nếu không tìm thấy
    }
}
