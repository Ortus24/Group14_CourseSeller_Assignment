package dal;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import model.Token;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class TokenDAO extends DBContext{

    public String getFormatDate(LocalDateTime myDateObj) {
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDate = myDateObj.format(myFormatObj);
        return formattedDate;
    }

    public boolean insertTokenForget(Token tokenForget) {
        String sql = "INSERT INTO [dbo].[tokenForgetPassword]\n"
                + "           ([token]\n"
                + "           ,[expiryTime]\n"
                + "           ,[isUsed]\n"
                + "           ,[userName])\n"
                + "     VALUES(?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, tokenForget.getToken());
            ps.setTimestamp(2, Timestamp.valueOf(tokenForget.getExpiryTime()));
            ps.setBoolean(3, tokenForget.isIsUser());
            ps.setString(4, tokenForget.getUserName());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public Token getTokenPassword(String token) {
        String sql = "SELECT *\n"
                + "FROM tokenForgetPassword\n"
                + "WHERE token = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, token);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Token(
                        rs.getInt("id"),
                        rs.getString("token"),
                        rs.getTimestamp("expiryTime").toLocalDateTime(),
                        rs.getBoolean("isUsed"),
                        rs.getString("userName")
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateStatus(Token token) {
        System.out.println("token = " + token);
        String sql = "UPDATE [dbo].[tokenForgetPassword]\n"
                + "   SET [isUsed] = ?\n"
                + " WHERE token = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setBoolean(1, token.isIsUser());
            st.setString(2, token.getToken());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
