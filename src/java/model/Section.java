package model;

public class Section {

    private int sectionId;
    private int courseId;
    private String sectionTitle;
    private String createdDate;

    public Section() {
    }

    public Section(int sectionId, int courseId, String sectionTitle, String createdDate) {
        this.sectionId = sectionId;
        this.courseId = courseId;
        this.sectionTitle = sectionTitle;
        this.createdDate = createdDate;
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

}
