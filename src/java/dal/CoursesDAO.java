package dal;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import model.Courses;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CoursesDAO extends DBContext {

    public List<Courses> getCourses() {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Courses]";
        List<Courses> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getInt("duration"),
                        rs.getString("thumbnail"),
                        rs.getString("createdDate"),
                        rs.getInt("status"));
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

    //Tìm kiếm khóa học theo title
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

    public Courses getCourseByCoursesId(int coursesId) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Courses]"
                + " WHERE CourseID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, coursesId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getInt("duration"),
                        rs.getString("thumbnail"),
                        rs.getInt("categoryID"),
                        rs.getString("createdDate"),
                        rs.getInt("status"));
                return c;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    //Hàm lấy tổng số khóa học hiện có 
    public int getTotalCourses() {
        String sql = "select count(*)\n"
                + "from Courses";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    //Phân trang không tìm kiếm
    public List<Courses> pagingCourseses(int index) {
        List<Courses> list = new ArrayList<>();
        String sql = "select *\n"
                + "from Courses\n"
                + "order by CourseID\n"
                + "OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 9);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getInt("duration"),
                        rs.getString("thumbnail"),
                        rs.getString("createdDate"),
                        rs.getInt("status"));
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }

    //Tìm kiếm khóa học theo description nhưng không phân trang 
    public List<Courses> getCoursesByTitle(String title) {
        String sql = "select *\n"
                + "from Courses\n"
                + "where Title like ?";
        List<Courses> listC = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + title + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Courses c = new Courses();
                c.setCourseID(rs.getInt(1));
                c.setTitle(rs.getString(2));
                c.setDescription(rs.getString(3));
                c.setPrice(rs.getInt(4));
                c.setDuration(rs.getInt(5));
                c.setThumbnail(rs.getString(6));
                c.setCategoryID(rs.getInt(7));
                c.setCreatedDate(rs.getString(8));
                c.setStatus(rs.getInt(9));
                listC.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listC;
    }

    //Tìm kiếm khóa học theo Description, Tich hợp phân trang
    public List<Courses> searchCourseByTitle(String keyword, int index) {
        List<Courses> list = new ArrayList<>();
        String sql = "SELECT * FROM Courses\n"
                + "WHERE Title LIKE ?\n"
                + "ORDER BY CourseID \n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT 9 ROWS ONLY";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + keyword + "%");
            st.setInt(2, (index - 1) * 9);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getInt("duration"),
                        rs.getString("thumbnail"),
                        rs.getString("createdDate"),
                        rs.getInt("status"));
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }

    //Tổng số khóa học khi thực hiện chức năng tìm kiếm 
    public int getTotalCourseBySearch(String keyword) {
        String sql = "SELECT COUNT(*)\n"
                + "FROM Courses\n"
                + "WHERE Title LIKE ?";
        int count = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + keyword + "%");
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return count;
    }

    //Lấy khóa học theo categoriesID
    public List<Courses> getAllCoursesByCategoriesId(int categoriesId, int index) {
        String sql = "SELECT * FROM Courses\n"
                + "WHERE CategoryID = ?\n"
                + "ORDER BY CourseID\n"
                + "OFFSET ? ROWS \n"
                + "FETCH NEXT 9 ROWS ONLY";
        List<Courses> listC = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, categoriesId);
            st.setInt(2, (index - 1) * 9);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getInt("duration"),
                        rs.getString("thumbnail"),
                        rs.getString("createdDate"),
                        rs.getInt("status"));
                listC.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listC;
    }

    //Lấy tổng số khóa học dựa trên categories
    public int getTotalCoursesByCategories(int categoriesId) {
        String sql = "SELECT COUNT(*)\n"
                + "FROM Courses\n"
                + "WHERE 1=1";
        if (categoriesId != 0) {
            sql += "AND CategoryID =?";
        }
        int count = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            if (categoriesId != 0) {
                st.setInt(1, categoriesId);
            }
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return count;
    }

    //Lấy ra 4 khóa học mới nhất 
    public List<Courses> getNewCoursesByCreateDate() {
        String sql = "SELECT TOP 4 *\n"
                + "FROM Courses\n"
                + "ORDER BY CreatedDate DESC, Price DESC";
        List<Courses> listC = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getInt("duration"),
                        rs.getString("thumbnail"),
                        rs.getString("createdDate"),
                        rs.getInt("status"));
                listC.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listC;
    }

    public List<Courses> getTopSixCoursesPopular() {
        String sql = "SELECT TOP 6 c.CourseID, c.Title, c.Description, c.Price, c.Duration, c.Thumbnail,  c.CreatedDate, C.Status , COALESCE(SUM(od.Quantity), 0) AS TotalPurchases\n"
                + "FROM Courses c LEFT JOIN OrderDetails od ON c.CourseID = od.CourseID\n"
                + "GROUP BY  c.CourseID, c.Title, c.Description, c.Price, c.Duration, c.Thumbnail, c.CreatedDate, C.Status \n"
                + "ORDER BY TotalPurchases DESC";

        List<Courses> listC = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getInt("duration"),
                        rs.getString("thumbnail"),
                        rs.getString("createdDate"),
                        rs.getInt("status"));
                listC.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listC;
    }

    //Sort Program 
    //Xử lý lọc theo category sort theo các trường hợp tích hợp phân trang
    public List<Courses> getCoursesSortedCommon(String sortType, int categoryId, int index) {
        String sql = generateQuerySql(sortType, categoryId);
        List<Courses> listC = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            int pramIndex = 1;
            if (categoryId != 0) {
                st.setInt(pramIndex++, categoryId);
            }
            st.setInt(pramIndex, (index - 1) * 9);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(
                        rs.getInt("courseID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getInt("duration"),
                        rs.getString("thumbnail"),
                        rs.getString("createdDate"),
                        rs.getInt("status")
                );
                listC.add(c);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return listC;
    }

    private String generateQuerySql(String sortType, int categoryId) {
        StringBuilder sql = new StringBuilder("SELECT * FROM Courses WHERE 1=1 ");

        if (categoryId != 0) {
            sql.append("AND CategoryID = ? ");
        }

        switch (sortType) {
            case "newest":
                sql.append("ORDER BY CreatedDate DESC ");
                break;
            case "popular":
                sql = new StringBuilder("SELECT c.CourseID, c.Title, c.Description, c.Price, c.Duration, c.Thumbnail, "
                        + "c.CategoryID, c.CreatedDate, c.Status, COALESCE(SUM(od.Quantity), 0) AS TotalPurchases "
                        + "FROM Courses c LEFT JOIN OrderDetails od ON c.CourseID = od.CourseID WHERE 1=1 ");
                if (categoryId != 0) {
                    sql.append("AND c.CategoryID = ? ");
                }
                sql.append("GROUP BY c.CourseID, c.Title, c.Description, c.Price, c.Duration, c.Thumbnail, "
                        + "c.CategoryID, c.CreatedDate, c.Status ORDER BY TotalPurchases DESC ");
                break;
            case "rating":
                sql = new StringBuilder("SELECT c.CourseID, c.Title, c.Description, c.Price, c.Duration, c.Thumbnail, "
                        + "c.CategoryID, c.CreatedDate, c.Status, COALESCE(AVG(r.Rating), 0) AS AverageRating "
                        + "FROM Courses c LEFT JOIN Reviews r ON c.CourseID = r.CourseID WHERE 1=1 ");
                if (categoryId != 0) {
                    sql.append("AND c.CategoryID = ? ");
                }
                sql.append("GROUP BY c.CourseID, c.Title, c.Description, c.Price, c.Duration, c.Thumbnail, "
                        + "c.CategoryID, c.CreatedDate, c.Status ORDER BY AverageRating DESC ");
                break;
            case "lowtohigh":
                sql.append("ORDER BY Price ASC ");
                break;
            case "hightolow":
                sql.append("ORDER BY Price DESC ");
                break;
            default:
                sql.append("ORDER BY CreatedDate ");
                break;
        }

        sql.append("OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY");

        return sql.toString();
    }

    public List<Courses> getTopCoursesPopular() {
        String sql = "SELECT TOP 3 c.*, SUM(od.Quantity) AS TotalSold\n"
                + "FROM Courses c\n"
                + "LEFT JOIN OrderDetails od ON c.CourseID = od.CourseID\n"
                + "GROUP BY c.CourseID, c.Title, c.Description, c.Price, c.Duration, \n"
                + "         c.Thumbnail, c.CategoryID, c.CreatedDate, c.Status\n"
                + "ORDER BY TotalSold DESC;";

        List<Courses> listC = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Courses c = new Courses(rs.getInt("courseID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("price"),
                        rs.getInt("duration"),
                        rs.getString("thumbnail"),
                        rs.getString("createdDate"),
                        rs.getInt("status"));
                listC.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listC;
    }

    public static void main(String[] args) {
        CoursesDAO cdao = new CoursesDAO();
        List<Courses> listC = cdao.getTopSixCoursesPopular();
        for (Courses courses : listC) {
            System.out.println(courses.getTitle());
        }
    }
}
