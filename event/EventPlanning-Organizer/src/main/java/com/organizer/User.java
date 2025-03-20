package com.organizer;

public class User {
    private int id;
    private String ptype; 

    private String vendor;
    private String contact;
   
    private String info;

    public User(int id, String ptype, String vendor, String contact,String info) {
        super();
        this.id = id;
        this.ptype = ptype;
    
        this.vendor = vendor;
        this.contact = contact;

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

  
    public String getName() {
        return vendor;
    }

    public void setName(String vendor) {
        this.vendor = vendor;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

   

   

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
