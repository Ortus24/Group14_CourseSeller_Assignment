package model;

public class Item {

    private Courses courses;
    private int quantity;
    private double price;

    public Item() {
    }

    public Item(Courses courses, int quantity, double price) {
        this.courses = courses;
        this.quantity = quantity;
        this.price = price;
    }

    public Courses getCourses() {
        return courses;
    }

    public void setCourses(Courses courses) {
        this.courses = courses;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

}
