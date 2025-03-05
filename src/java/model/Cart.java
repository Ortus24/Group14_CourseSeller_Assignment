/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author TRAN ANH HAI
 */
public class Cart {
    private List<Items> items = new ArrayList<>();
    
    public void addItem(Courses course, int quantity) {
        for (Items item : items) {
            if (item.getCourse().getCourseID() == course.getCourseID()) {
                item.setQuantity(item.getQuantity() + quantity);
                return;
            }
        }
        items.add(new Items(course, quantity));
    }
    
    public void removeItem(int courseId) {
        items.removeIf(item -> item.getCourse().getCourseID() == courseId);
    }
    
    public void clearCart() {
        items.clear(); 
    }

    public double getTotalPrice() {
        return items.stream().mapToDouble(item -> item.getUnitPrice() * item.getQuantity()).sum();
    }
    
    public int getTotalItems() {
        return items.size();
    }

    public List<Items> getItems() {
        return items;
    }

    public void setItems(List<Items> items) {
        this.items = items;
    }
    
}
