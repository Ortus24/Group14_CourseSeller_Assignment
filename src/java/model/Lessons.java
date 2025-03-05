package model;

public class Lessons {
   private int lessonId;
   private int sectionId;
   private String typeName;
   private String title;
   private double duration;
   private String contentURL;
   private String createdDate;

    public Lessons() {
    }

    public Lessons(int lessonId, int sectionId, String typeName, String title, double duration, String contentURL, String createdDate) {
        this.lessonId = lessonId;
        this.sectionId = sectionId;
        this.typeName = typeName;
        this.title = title;
        this.duration = duration;
        this.contentURL = contentURL;
        this.createdDate = createdDate;
    }

    public int getLessonId() {
        return lessonId;
    }

    public void setLessonId(int lessonId) {
        this.lessonId = lessonId;
    }

    public int getSectionId() {
        return sectionId;
    }

    public void setSectionId(int sectionId) {
        this.sectionId = sectionId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getDuration() {
        return duration;
    }

    public void setDuration(double duration) {
        this.duration = duration;
    }

    public String getContentURL() {
        return contentURL;
    }

    public void setContentURL(String contentURL) {
        this.contentURL = contentURL;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }
}
 