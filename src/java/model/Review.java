/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Review {
    private int ReviewId;
    private int CourseId;
    private User user;
    private float rating;
    private String comment;
    private String date;

    public Review() {
    }

    public Review(int ReviewId, int CourseId, User user, float rating, String comment, String date) {
        this.ReviewId = ReviewId;
        this.CourseId = CourseId;
        this.user = user;
        this.rating = rating;
        this.comment = comment;
        this.date = date;
    }

    public int getReviewId() {
        return ReviewId;
    }

    public void setReviewId(int ReviewId) {
        this.ReviewId = ReviewId;
    }

    public int getCourseId() {
        return CourseId;
    }

    public void setCourseId(int CourseId) {
        this.CourseId = CourseId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    
}
