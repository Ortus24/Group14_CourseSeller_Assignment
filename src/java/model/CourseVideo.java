/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class CourseVideo {
    private int videoID;
    private int courseID;
    private String videoURL;
    private String title;
    private int duration;
    private String createDate;

    public CourseVideo() {
    }

    public CourseVideo(int videoID, int courseID, String videoURL, String title, int duration, String createDate) {
        this.videoID = videoID;
        this.courseID = courseID;
        this.videoURL = videoURL;
        this.title = title;
        this.duration = duration;
        this.createDate = createDate;
    }

    public int getIdeoID() {
        return videoID;
    }

    public void setIdeoID(int ideoID) {
        this.videoID = ideoID;
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

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
    
    
}
