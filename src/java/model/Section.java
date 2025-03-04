package model;

import java.util.List;

public class Section {
    private int sectionId;
    private Course course;
    private String sectionTitle;
    private String createdDate;
    private List<Lesson> listLesson;
    public Section() {
    }

    public Section(int sectionId, Course course, String sectionTitle, String createdDate) {
        this.sectionId = sectionId;
        this.course = course;
        this.sectionTitle = sectionTitle;
        this.createdDate = createdDate;
    }

    public Section(int sectionId, Course course, String sectionTitle, String createdDate, List<Lesson> listLesson) {
        this.sectionId = sectionId;
        this.course = course;
        this.sectionTitle = sectionTitle;
        this.createdDate = createdDate;
        this.listLesson = listLesson;
    }

    public int getSectionId() {
        return sectionId;
    }

    public void setSectionId(int sectionId) {
        this.sectionId = sectionId;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public String getSectionTitle() {
        return sectionTitle;
    }

    public void setSectionTitle(String sectionTitle) {
        this.sectionTitle = sectionTitle;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public List<Lesson> getListLesson() {
        return listLesson;
    }

    public void setListLesson(List<Lesson> listLesson) {
        this.listLesson = listLesson;
    }
    
    
}
