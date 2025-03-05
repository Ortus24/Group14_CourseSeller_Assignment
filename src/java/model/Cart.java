package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(String txt, List<Courses> list) {
        items = new ArrayList<>();
        try {
            if (txt != null && txt.length() != 0) {
                String[] s = txt.split(",");
                for (String str : s) {
                    String[] n = str.split(":");
                    int id = Integer.parseInt(n[0]);
                    int quantity = Integer.parseInt(n[1]);
                    Courses c = getCoursesById(id, list);
                    Item t = new Item(c, quantity, c.getPrice());
                    addItem(t);
                }
            }
        } catch (NumberFormatException e) {
        }

    }

    private Courses getCoursesById(int id, List<Courses> list) {
        for (Courses courses : list) {
            if (courses.getCourseID() == id) {
                return courses;
            }
        }
        return null;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }

    private Item getItemById(int id) {
        for (Item item : items) {
            if (item.getCourses().getCourseID() == id) {
                return item;
            }
        }
        return null;
    }

    public void addItem(Item t) {
        if (getItemById(t.getCourses().getCourseID()) != null) {
            Item m = getItemById(t.getCourses().getCourseID());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    public void removeItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public double getTotalMoney() {
        double count = 0;
        for (Item item : items) {
            count += (item.getQuantity() * item.getPrice());
        }
        return count;
    }

}
