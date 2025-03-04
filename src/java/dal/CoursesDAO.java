/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import model.Category;
import model.Course;
import model.Lesson;
import model.RatingPercent;
import model.Review;
import model.Section;
import model.User;

/**
 *
 * @author admin
 */
public class CoursesDAO extends DBContext {

    //Get all course
    public List<Course> getAllCourse() {
        List<Course> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Courses]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = getCategoryIdByCourseId(rs.getInt("CategoryID"));
                Course c = new Course(rs.getInt("CourseID"), rs.getString("Title"), rs.getString("Description"),
                        rs.getDouble("Price"), rs.getString("Thumbnail"),
                        category, rs.getString("CreatedDate"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //Get course by course id
    public Course getCourseById(int id) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Courses]\n"
                + "  WHERE [CourseID] = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = getCategoryIdByCourseId(rs.getInt("CategoryID"));
                Course c = new Course(rs.getInt("CourseID"), rs.getString("Title"), rs.getString("Description"),
                        rs.getDouble("Price"), rs.getString("Thumbnail"),
                        category, rs.getString("CreatedDate"));
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
    public List<Course> relatedCourses(int categoryId, int courseId) {
        List<Course> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM Courses C\n"
                + "WHERE C.CategoryID = ? and C.CourseID != ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ps.setInt(2, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = getCategoryIdByCourseId(rs.getInt("CategoryID"));
                Course c = new Course(rs.getInt("CourseID"), rs.getString("Title"), rs.getString("Description"),
                        rs.getDouble("Price"), rs.getString("Thumbnail"),
                        category, rs.getString("CreatedDate"));
                list.add(c);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //Total duration
    public float totalDuration(int courseId) {
        String sql = "SELECT \n"
                + "    c.CourseID,\n"
                + "    c.Title AS CourseTitle,\n"
                + "    COALESCE(SUM(l.Duration), 0) AS TotalDuration\n"
                + "FROM Courses c\n"
                + "LEFT JOIN Sections s ON c.CourseID = s.CourseID\n"
                + "LEFT JOIN Lessons l ON s.SectionID = l.SectionID\n"
                + "GROUP BY c.CourseID, c.Title\n"
                + "HAVING c.CourseID = ?;";
        float sum = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sum = rs.getFloat("TotalDuration");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return sum;
    }

    //Total enrolled(So ng dang ki khoa hoc)
    //Total lesson
    public int totalLesson(int courseId) {
        String sql = "select COUNT(*) AS LessonCount\n"
                + "from [dbo].[Lessons] as lesson\n"
                + "join [dbo].[Sections] as section on section.SectionID = lesson.SectionID\n"
                + "where section.CourseID = ?;";
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
    //Widget end

    //Course-tab: Curriculum start
    public List<Lesson> getListLessonBySectionId(int sectionId) {
        List<Lesson> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Lessons]\n"
                + "  WHERE [SectionID] = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, sectionId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Section section = getSectionBySectionId(sectionId);
                Lesson lesson = new Lesson(rs.getInt("LessonID"), section, rs.getString("TypeName"), rs.getString("Title")
                        , rs.getFloat("Duration"), rs.getString("ContentURL"), rs.getString("CreatedDate"));
                list.add(lesson);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Section getSectionBySectionId(int sectionId) {
        String sql = "  SELECT *\n"
                + "  FROM Sections\n"
                + "  WHERE [SectionID] = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, sectionId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Course course = getCourseById(rs.getInt("CourseID"));
                Section section = new Section(rs.getInt("SectionID"), course,
                        rs.getString("SectionTitle"), rs.getString("CreatedDate"));
                return section;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Section> getListSectionByCourseId(int courseId) {
        List<Section> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM Sections\n"
                + "WHERE CourseID = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Course course = getCourseById(courseId);
                Section section = new Section(rs.getInt("SectionID"), course,
                        rs.getString("SectionTitle"), rs.getString("CreatedDate"));
                list.add(section);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    //Course-tab: Curriculum end

    //Course-tab: Reviews start
    //Avg rating by course id
    public float avgRating(int courseId) {
        String sql = "SELECT AVG(Rating) AS AverageRating\n"
                + "FROM [Reviews]\n"
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
                + "FROM [Reviews]\n"
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
    public RatingPercent avgRatingPercent(int courseId, int rating) {
        String sql = "SELECT Rating, \n"
                + "ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Reviews WHERE CourseID = ?)), 1) AS Percentage\n"
                + "FROM Reviews\n"
                + "WHERE CourseID = ?\n"
                + "GROUP BY Rating\n"
                + "HAVING Rating = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ps.setInt(2, courseId);
            ps.setInt(3, rating);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                RatingPercent rp = new RatingPercent(rs.getInt("Rating"), rs.getFloat("Percentage"));
                return rp;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //Get review by course id
    public List<Review> getReviewByCourseId(int courseId) {
        List<Review> list = new ArrayList<>();
        String sql = "SELECT * \n"
                + "FROM [Reviews]\n"
                + "WHERE CourseID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = getUserByUserName(rs.getString("UserName"));
                Review review = new Review(rs.getInt("ReviewID"), rs.getInt("CourseID"), user,
                        rs.getFloat("Rating"), rs.getString("Comment"), rs.getString("ReviewDate"));
                list.add(review);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public User getUserByUserName(String userName) {
        String sql = "SELECT * FROM Users WHERE UserName LIKE '" + userName + "'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getString("UserName"), rs.getString("FullName"), rs.getString("Password"),
                        rs.getInt("RoleID"), rs.getString("Image"), rs.getString("Email"), rs.getString("BirthDay"),
                        rs.getString("Address"), rs.getString("Phone"), rs.getInt("Status"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    //Course-tab: Review end 

    public static void main(String[] args) {
        CoursesDAO d = new CoursesDAO();
        System.out.println(d.getUserByUserName("alice_brown").getFullName());
    }

}
