package model;

import java.util.List;

public class Section {

    private int sectionId;
    private int courseId;
    private String sectionTitle;
    private String createdDate;
    private List<Lessons> listLessons;
    public Section() {
    }

    public Section(int sectionId, int courseId, String sectionTitle, String createdDate) {
        this.sectionId = sectionId;
        this.courseId = courseId;
        this.sectionTitle = sectionTitle;
        this.createdDate = createdDate;
    }

    public Section(int sectionId, int courseId, String sectionTitle, String createdDate, List<Lessons> listLessons) {
        this.sectionId = sectionId;
        this.courseId = courseId;
        this.sectionTitle = sectionTitle;
        this.createdDate = createdDate;
        this.listLessons = listLessons;
    }

    public int getSectionId() {
        return sectionId;
    }

    public void setSectionId(int sectionId) {
        this.sectionId = sectionId;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
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

    public List<Lessons> getListLessons() {
        return listLessons;
    }

    public void setListLessons(List<Lessons> listLessons) {
        this.listLessons = listLessons;
    }

}
