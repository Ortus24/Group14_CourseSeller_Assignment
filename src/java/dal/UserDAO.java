package dal;

import model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO extends DBContext {

    public User authenticationUserLogin(String username, String password) {
        String sql = "SELECT *\n"
                + "FROM Users\n"
                + "WHERE UserName = ? AND [Password] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User user = new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10));
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User checkUserExist(String username) {
        String sql = "SELECT *\n"
                + "FROM Users\n"
                + "WHERE UserName = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User user = new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10));
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void registerUser(String firstName, String lastName, String birthDate, String email, String username, String password) {
        String sql = "INSERT\n"
                + "INTO Users\n"
                + "VALUES(?,?,?,2,NULL,?,?,'', '', 0)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            String fullName = firstName + lastName;
            st.setString(2, fullName);
            st.setString(3, password);
            st.setString(4, email);
            st.setString(5, birthDate);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User getUserByEmail(String email) {
        String sql = "SELECT *\n"
                + "FROM Users\n"
                + "WHERE Email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User user = new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10));
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User getUserByUserName(String userName) {
        String sql = "SELECT *\n"
                + "FROM Users\n"
                + "WHERE userName = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User user = new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10));
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void updatePassword(String email, String password) {
        String sql = "UPDATE Users\n"
                + "SET Password = ?\n"
                + "WHERE Email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            st.setString(2, email);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        UserDAO d = new UserDAO();
        User u = d.authenticationUserLogin("alice_brown", "alicepass123");
        System.out.println(u.getBirthDay());
    }
}
