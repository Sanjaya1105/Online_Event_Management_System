package com.function;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static List<User> validate(String name, String email) {
        ArrayList<User> users = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from functions where name='" + name + "' and email='" + email + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String name1 = rs.getString(2);
                String email1 = rs.getString(3);
                String phone = rs.getString(4);
                String packages = rs.getString(5);
                String additional = rs.getString(6);
                LocalDate date = rs.getDate(7).toLocalDate();
                LocalTime time = rs.getTime(8).toLocalTime();
                double amount = rs.getDouble(9);

                User user = new User(id, name1, email1, phone, packages, additional, date, time, amount);
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }

        return users;
    }

    public static boolean insertCustomer(User user) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "insert into functions (name, email, phone, packages, additional, date, time, amount) values ('"
                    + user.getName() + "','" + user.getEmail() + "','" + user.getPhone() + "','"
                    + user.getPackages() + "','" + user.getAdditional() + "','" + user.getDate() + "','"
                    + user.getTime() + "','" + user.getAmount() + "')";
            int rs = stmt.executeUpdate(sql);

            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
            isSuccess = false;
        } finally {
            closeResources();
        }

        return isSuccess;
    }

    public static boolean updateCustomer(User user) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "update functions set name='" + user.getName() + "',email='" + user.getEmail() + "',phone='"
                    + user.getPhone() + "',packages='" + user.getPackages() + "',additional='" + user.getAdditional()
                    + "',date='" + user.getDate() + "',time='" + user.getTime() + "',amount='" + user.getAmount()
                    + "' where id='" + user.getId() + "'";
            int rs = stmt.executeUpdate(sql);

            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
            isSuccess = false;
        } finally {
            closeResources();
        }

        return isSuccess;
    }

    public static List<User> getCustomerDetails(String id) {
        ArrayList<User> users = new ArrayList<>();

        try {
            int convertedID = Integer.parseInt(id);
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from functions where id='" + convertedID + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int userId = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String phone = rs.getString(4);
                String packages = rs.getString(5);
                String additional = rs.getString(6);
                LocalDate date = rs.getDate(7).toLocalDate();
                LocalTime time = rs.getTime(8).toLocalTime();
                double amount = rs.getDouble(9);

                User user = new User(userId, name, email, phone, packages, additional, date, time, amount);
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }

        return users;
    }

    public static boolean deleteCustomer(String id) {
        try {
            int convId = Integer.parseInt(id);
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "delete from functions where id='" + convId + "'";
            int rs = stmt.executeUpdate(sql);

            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
            isSuccess = false;
        } finally {
            closeResources();
        }

        return isSuccess;
    }

    private static void closeResources() {
        try {
            if (stmt != null) {
                stmt.close();
            }
            if (con != null) {
                con.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
