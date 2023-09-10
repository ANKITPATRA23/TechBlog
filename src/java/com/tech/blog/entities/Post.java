/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.entities;

import java.sql.Timestamp;

/**
 *
 * @author ankit
 */
public class Post {
    private int P_id;
    private String P_Title;
    private String P_Content;
    private String P_Code;
    private String P_Pic;
    private Timestamp P_Date;
    private int Cat_id;
    private int user_id;

    public Post(int P_id, String P_Title, String P_Content, String P_Code, String P_Pic, Timestamp P_Date, int Cat_id, int user_id) {
        this.P_id = P_id;
        this.P_Title = P_Title;
        this.P_Content = P_Content;
        this.P_Code = P_Code;
        this.P_Pic = P_Pic;
        this.P_Date = P_Date;
        this.Cat_id = Cat_id;
        this.user_id = user_id;
    }

    public Post() {
    }

    public Post(String P_Title, String P_Content, String P_Code, String P_Pic, Timestamp P_Date, int Cat_id,int user_id) {
        this.P_Title = P_Title;
        this.P_Content = P_Content;
        this.P_Code = P_Code;
        this.P_Pic = P_Pic;
        this.P_Date = P_Date;
        this.Cat_id = Cat_id;
        this.user_id = user_id;
    }

    public int getP_id() {
        return P_id;
    }

    public void setP_id(int P_id) {
        this.P_id = P_id;
    }

    public String getP_Title() {
        return P_Title;
    }

    public void setP_Title(String P_Title) {
        this.P_Title = P_Title;
    }

    public String getP_Content() {
        return P_Content;
    }

    public void setP_Content(String P_Content) {
        this.P_Content = P_Content;
    }

    public String getP_Code() {
        return P_Code;
    }

    public void setP_Code(String P_Code) {
        this.P_Code = P_Code;
    }

    public String getP_Pic() {
        return P_Pic;
    }

    public void setP_Pic(String P_Pic) {
        this.P_Pic = P_Pic;
    }

    public Timestamp getP_Date() {
        return P_Date;
    }

    public void setP_Date(Timestamp P_Date) {
        this.P_Date = P_Date;
    }

    public int getCat_id() {
        return Cat_id;
    }

    public void setCat_id(int Cat_id) {
        this.Cat_id = Cat_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    
    
    
    
}
