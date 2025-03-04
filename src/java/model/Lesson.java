package model;

import java.time.Duration;

public class Lesson {
    private int lessonId;
    private Section section;
    private String typeName;
    private String title;
    private float duration;
    private String contentURL;
    private String createdDate;

    public Lesson() {
    }

    public Lesson(int lessonId, Section section, String typeName, String title, float duration, String contentURL, String createdDate) {
        this.lessonId = lessonId;
        this.section = section;
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

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
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

    public float getDuration() {
        return duration;
    }

    public void setDuration(float duration) {
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
