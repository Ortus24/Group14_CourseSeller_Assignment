/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import model.Courses;

/**
 *
 * @author admin
 */
public class CoursesDAO extends DBContext{

    public List<Courses> getAllCourse(){
        List<Courses> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Courses]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("CourseID"), rs.getString("Title"), rs.getString("Description"), 
                        rs.getInt("Price"), rs.getInt("Duration"), rs.getString("Thumbnail"), 
                        rs.getInt("CategoryID"), rs.getString("CreatedDate"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
}
