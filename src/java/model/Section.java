package model;

public class Section {
    private int sectionId;
    private Course course;
    private String sectionTitle;
    private String createdDate;

    public Section() {
    }

    public Section(int sectionId, Course course, String sectionTitle, String createdDate) {
        this.sectionId = sectionId;
        this.course = course;
        this.sectionTitle = sectionTitle;
        this.createdDate = createdDate;
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

    
    
    
}
