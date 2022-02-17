/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Models;

import javax.ejb.Stateless;

/**
 *
 * @author Mariana
 */
@Stateless
public class UserBean {
    private String name;
    private String phoneNumber;
    private String email;
    private int id;

    public UserBean() {
    }

    public UserBean(String name, String phoneNumber, String email, int id) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.id = id;
    }

    
    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the phoneNumber
     */
    public String getPhoneNumber() {
        return phoneNumber;
    }

    /**
     * @param phoneNumber the phoneNumber to set
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
    
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
    
    
    //CRUD
    public String consultUser(){
        return "The user has been found.";
    }
    
    public String editUser(){
        return "The user has been edited.";
    }
    
    public String deleteUser(){
        return "The user has been deleted.";
    }
    
    public String insertParking(){
       return "El The user has been inserted."; 
    }

    
}
