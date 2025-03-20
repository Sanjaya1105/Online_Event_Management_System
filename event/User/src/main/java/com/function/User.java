package com.function;

import java.time.LocalDate;
import java.time.LocalTime;

public class User {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String packages;
    private String additional;
    private LocalDate date;
    private LocalTime time;
    private double amount;

    public User(int id, String name, String email, String phone, String packages, String additional,
                LocalDate date, LocalTime time, double amount) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.packages = packages;
        this.additional = additional;
        this.date = date;
        this.time = time;
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPackages() {
        return packages;
    }

    public void setPackages(String packages) {
        this.packages = packages;
    }

    public String getAdditional() {
        return additional;
    }

    public void setAdditional(String additional) {
        this.additional = additional;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public LocalTime getTime() {
        return time;
    }

    public void setTime(LocalTime time) {
        this.time = time;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }
}
