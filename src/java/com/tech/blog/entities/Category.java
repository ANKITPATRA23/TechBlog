/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.entities;

/**
 *
 * @author ankit
 */
public class Category {
    private int C_id;
    private String Name;
    private String Description;

    public Category() {
    }

    public Category(int C_id, String Name, String Description) {
        this.C_id = C_id;
        this.Name = Name;
        this.Description = Description;
    }

    public Category(String Name, String Description) {
        this.Name = Name;
        this.Description = Description;
    }

    public int getC_id() {
        return C_id;
    }

    public void setC_id(int C_id) {
        this.C_id = C_id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    
    
    
}
