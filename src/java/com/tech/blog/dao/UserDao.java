/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.dao;

/**
 *
 * @author ankit
 */
import com.tech.blog.entities.User;
import java.sql.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    //to insert user to DB
    public boolean saveUser(User user) {
        boolean f = false;
        try {

            String query = "insert into user(First_name,Last_name,email,password,gender,about) values (?,?,?,?,?,?)";
            PreparedStatement ps = this.con.prepareStatement(query);

            ps.setString(1, user.getFirst_name());
            ps.setString(2, user.getLast_name());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getGender());
            ps.setString(6, user.getAbout());

            ps.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from user where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet set = ps.executeQuery();

            if (set.next()) {
                user = new User();
                String First_name = set.getString("First_name");
                user.setFirst_name(First_name);

                user.setLast_name(set.getString("Last_name"));
                user.setId(set.getInt("user_id"));
                user.setEmail(set.getString("Email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("reg_date"));
                user.setProfile(set.getString("profile"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public boolean updateUser(User user) {
        boolean f = false;
        try {
            String query = "update user set email=?, password=?, about=?, profile=? where user_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getAbout());
            ps.setString(4, user.getProfile());
            ps.setInt(5, user.getId());

            ps.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public User getUserByUserId(int postId) throws SQLException {

        User user = null;
        try {
            String q = "select * from user where user_id=?";
            PreparedStatement p = this.con.prepareStatement(q);
            p.setInt(1, postId);

            ResultSet set = p.executeQuery();

            if (set.next()) {
                user = new User();
                String First_name = set.getString("First_name");
                user.setFirst_name(First_name);

                user.setLast_name(set.getString("Last_name"));
                user.setId(set.getInt("user_id"));
                user.setEmail(set.getString("Email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("reg_date"));
                user.setProfile(set.getString("profile"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

}
