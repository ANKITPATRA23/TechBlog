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
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDao {
    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    
    public ArrayList<Category> getAllCategories(){
        ArrayList<Category> list = new ArrayList<>();
        
        try{
            String q = "select * from categories";
            Statement st = con.createStatement();
            ResultSet set = st.executeQuery(q);
            
            while(set.next()){
                int cid = set.getInt("C_id");
                String name = set.getString("Name");
                String description = set.getString("Description");
                
                Category c = new Category(cid,name,description);
                list.add(c);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public boolean savePost(Post p){
        boolean f = false;
        
        try{
            String q = "insert into post(P_Title,P_Content,P_Code,P_Pic,Cat_id,user_id) values(?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setString(1,p.getP_Title());
            ps.setString(2,p.getP_Content());
            ps.setString(3,p.getP_Code());
            ps.setString(4,p. getP_Pic());
            ps.setInt(5,p.getCat_id());
            ps.setInt(6, p.getUser_id());
            
            ps.executeUpdate();
            f=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    
    public List<Post> getAllPosts(){
        List<Post> list = new ArrayList<>();
        
        try{
            PreparedStatement p = con.prepareStatement("select * from post order by P_id ASC");
            
            ResultSet set = p.executeQuery();
            
            while(set.next()){
                int pid = set.getInt("P_id");
                String pTitle = set.getString("P_Title");
                String pContent = set.getString("P_Content");
                String pCode = set.getString("P_Code");
                String pPic = set.getString("P_Pic");
                Timestamp date = set.getTimestamp("P_Date");
                int catId = set.getInt("Cat_id");
                int userId = set.getInt("user_id");
                
                Post post = new Post(pid,pTitle,pContent,pCode,pPic,date,catId,userId);
                
                list.add(post);
                
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public List<Post> getPostByCatId(int catId){
        List<Post> list = new ArrayList<>();
        
        try{
            PreparedStatement p = con.prepareStatement("select * from post where Cat_id =?");
            p.setInt(1, catId);
            ResultSet set = p.executeQuery();
            
            while(set.next()){
                int pid = set.getInt("P_id");
                String pTitle = set.getString("P_Title");
                String pContent = set.getString("P_Content");
                String pCode = set.getString("P_Code");
                String pPic = set.getString("P_Pic");
                Timestamp date = set.getTimestamp("P_Date");
                
                int userId = set.getInt("user_id");
                
                Post post = new Post(pid,pTitle,pContent,pCode,pPic,date,catId,userId);
                
                list.add(post);
                
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return list;
    }
    
    public Post getPostByPostId(int postId) throws SQLException{
        Post post = null;
        String q = "select * from post where P_id=?";
        PreparedStatement p = this.con.prepareStatement(q);
        p.setInt(1,postId);
        
        ResultSet set = p.executeQuery();
        
        if(set.next()){
            int pid = set.getInt("P_id");
                String pTitle = set.getString("P_Title");
                String pContent = set.getString("P_Content");
                String pCode = set.getString("P_Code");
                String pPic = set.getString("P_Pic");
                Timestamp date = set.getTimestamp("P_Date");
                int catId = set.getInt("Cat_id");
                int userId = set.getInt("user_id");
                
                post = new Post(pid,pTitle,pContent,pCode,pPic,date,catId,userId);
        }
        
        
        return post;
    }
   
}
