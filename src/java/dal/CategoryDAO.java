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
    
    public static void main(String[] args) {
        CategoryDAO d = new CategoryDAO();
        System.out.println(d.getCategory().get(0).getCategoryName());
    }
}
