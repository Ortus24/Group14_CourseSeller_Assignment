package model;

import java.time.LocalDateTime;

public class Token {
     private int id;
     private String token;
     private LocalDateTime expiryTime;
     private boolean isUser;
     private String userName;

    public Token() {
    }

    public Token(int id, String token, LocalDateTime expiryTime, boolean isUser, String userName) {
        this.id = id;
        this.token = token;
        this.expiryTime = expiryTime;
        this.isUser = isUser;
        this.userName = userName;
    }
    
    public Token( String token, LocalDateTime expiryTime, boolean isUser, String userName) {
        this.token = token;
        this.expiryTime = expiryTime;
        this.isUser = isUser;
        this.userName = userName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public LocalDateTime getExpiryTime() {
        return expiryTime;
    }

    public void setExpiryTime(LocalDateTime expiryTime) {
        this.expiryTime = expiryTime;
    }

    public boolean isIsUser() {
        return isUser;
    }

    public void setIsUser(boolean isUser) {
        this.isUser = isUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
     
     
}