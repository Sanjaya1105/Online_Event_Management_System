package com.vendor;

public class User {
    private int id;
    private String ptype; // Changed from "package" to "ptype"
    private String type;
    private String name;
    private String contact;
    private int capacity;
    private int budget;
    private String info;

    public User(int id, String ptype, String type, String name, String contact, int capacity, int budget, String info) {
        super();
        this.id = id;
        this.ptype = ptype;
        this.type = type;
        this.name = name;
        this.contact = contact;
        this.capacity = capacity;
        this.budget = budget;
        this.info = info;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPtype() {
        return ptype;
    }

    public void setPtype(String ptype) {
        this.ptype = ptype;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public int getBudget() {
        return budget;
    }

    public void setBudget(int budget) {
        this.budget = budget;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
