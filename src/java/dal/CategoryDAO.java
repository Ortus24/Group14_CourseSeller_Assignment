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
    //Phần bên trên trở đi là phần của nhật làm 

    public List<Category> getCategoryByMajor(String major) {
        String sql = "SELECT * FROM Categories\n"
                + "WHERE CategoryName LIKE ?";
        List<Category> listC = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%"+major);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Category e = new Category();
                e.setCategoryID(rs.getInt(1));
                e.setCategoryName(rs.getString(2));
                e.setDescription(rs.getString(3));
                listC.add(e);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listC;
    }
    
    public static void main(String[] args) {
        CategoryDAO cdao = new CategoryDAO();
        List<Category> listC = cdao.getCategoryByMajor("SE");
        for (Category category : listC) {
            System.out.println(category.getDescription());
        }
    }
}
