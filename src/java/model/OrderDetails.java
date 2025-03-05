/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TRAN ANH HAI
 */
public class OrderDetails {
    private Order orderID;
    private Courses courseID;
    private int quantity;
    private double unitPrice;
    private double discount;

    public OrderDetails() {
    }

    public OrderDetails(Order orderID, Courses courseID, int quantity, double unitPrice, double discount) {
        this.orderID = orderID;
        this.courseID = courseID;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.discount = discount;
    }

    public Order getOrderID() {
        return orderID;
    }

    public void setOrderID(Order orderID) {
        this.orderID = orderID;
    }

    public Courses getCourseID() {
        return courseID;
    }

    public void setCourseID(Courses courseID) {
        this.courseID = courseID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }
    
}
