package com.vendor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vendor.DBConnect;

public class UserDBUtil {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static List<User> validate(String name, String nic) {
        ArrayList<User> users = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from vpack.vendor where nic='" + nic + "' and name='" + name + "'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                int id = rs.getInt(1);
                String ptype = rs.getString(2);
                String type = rs.getString(3);
                String name1 = rs.getString(4);
                String contact = rs.getString(5);
                int capacity = rs.getInt(6);
                int budget = rs.getInt(7);
                String info = rs.getString(8);

                User user = new User(id, ptype, type, name1, contact, capacity, budget, info);
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();

        }

        return users;
    }

    public static boolean insertCustomer(String ptype, String type, String name, String contact, int capacity, int budget, String info) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "insert into vpack.vendor values (0,'" + ptype + "','" + type + "','" + name + "','" + contact + "'," + capacity + "," + budget + ",'" + info + "')";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static boolean updateCustomer(int id, String ptype, String type, String vendor, String contact, int capacity, int budget, String info) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "update vpack.vendor set ptype='" + ptype + "', type='" + type + "', vendor='" + vendor + "', contact='" + contact + "', capacity=" + capacity + ", budget=" + budget + ", info='" + info + "' where id=" + id;
            int rs = stmt.executeUpdate(sql);

            isSuccess = rs > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static List<User> getCustomerDetails(int id) {
        ArrayList<User> users = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from vpack.vendor where id=" + id;
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int userId = rs.getInt(1);
                String ptype = rs.getString(2);
                String type = rs.getString(3);
                String name = rs.getString(4);
                String contact = rs.getString(5);
                int capacity = rs.getInt(6);
                int budget = rs.getInt(7);
                String info = rs.getString(8);

                User user = new User(userId, ptype, type, name, contact, capacity, budget, info);
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }

 public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from vendor where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    public static List<User> getAllAdmins() {
        ArrayList<User> users = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from vpack.vendor";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String ptype = rs.getString(2);
                String type = rs.getString(3);
                String name = rs.getString(4);
                String contact = rs.getString(5);
                int capacity = rs.getInt(6);
                int budget = rs.getInt(7);
                String info = rs.getString(8);

                User user = new User(id, ptype, type, name, contact, capacity, budget, info);
                users.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
}
