/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nhat
 */
public class CourseVideos {

    private int videoID;
    private int courseID;
    private String videoURL;
    private String title;
    private int duration;
    private String createdDate;

    public CourseVideos() {
    }

    public CourseVideos(int videoID, int courseID, String videoURL, String title, int duration, String createdDate) {
        this.videoID = videoID;
        this.courseID = courseID;
        this.videoURL = videoURL;
        this.title = title;
        this.duration = duration;
        this.createdDate = createdDate;
    }

    public CourseVideos(int videoID, int courseID, String videoURL, String title, int duration) {
        this.videoID = videoID;
        this.courseID = courseID;
        this.videoURL = videoURL;
        this.title = title;
        this.duration = duration;
    }
    
    

    public CourseVideos(int courseID, String videoURL, String title, int duration) {
        this.courseID = courseID;
        this.videoURL = videoURL;
        this.title = title;
        this.duration = duration;
    }

    public int getVideoID() {
        return videoID;
    }

    public void setVideoID(int videoID) {
        this.videoID = videoID;
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public String getVideoURL() {
        return videoURL;
    }

    public void setVideoURL(String videoURL) {
        this.videoURL = videoURL;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

}
