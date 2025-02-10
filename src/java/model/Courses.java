/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nhat
 */
public class Courses {
    private int courseID;
    private String title;
    private String description;
    private int price;
    private int duration;
    private String thumbnail;
    private int categoryID;
    private String createdDate;
    
//    dang do minh duc

    public Courses() {
    }

    public Courses(int courseID, String title, String description, int price, int duration, String thumbnail, String createdDate) {
        this.courseID = courseID;
        this.title = title;
        this.description = description;
        this.price = price;
        this.duration = duration;
        this.thumbnail = thumbnail;
        this.createdDate = createdDate;
    }

    public Courses(int courseID, String title, String description, int price, int duration, String thumbnail, int categoryID, String createdDate) {
        this.courseID = courseID;
        this.title = title;
        this.description = description;
        this.price = price;
        this.duration = duration;
        this.thumbnail = thumbnail;
        this.categoryID = categoryID;
        this.createdDate = createdDate;
    }
    
    

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }
    
    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }
}
