/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.dao;

/**
 *
 * @author ankit
 */
import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;
public class CategoryDao {
    Connection con;

    public CategoryDao(Connection con) {
        this.con = con;
    }
    
    public boolean saveCategory(Category c){
        boolean f = false;
        
        try{
            String q = "insert into categories(Name,Description) values(?,?)";
            PreparedStatement ps = con.prepareStatement(q);
            
            
            ps.setString(1, c.getName());
            ps.setString(2, c.getDescription());
            
            ps.executeUpdate();
            f=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
  
}
