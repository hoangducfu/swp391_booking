/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author mactu
 */
public class Account {
    private int id;
    private String username, password, phone,dob;
    private boolean statusGoogle;
    private int role;

    public Account() {
    }

    public Account(String username) {
        this.username = username;
    }
    

    public Account(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Account(String username, String password, int role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }
    
    
    
    public Account(int id, String username, String password, String phone, String dob, boolean statusGoogle, int role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.dob = dob;
        this.statusGoogle = statusGoogle;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public boolean isStatusGoogle() {
        return statusGoogle;
    }

    public void setStatusGoogle(boolean statusGoogle) {
        this.statusGoogle = statusGoogle;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", phone=" + phone + ", dob=" + dob + ", statusGoogle=" + statusGoogle + ", role=" + role + '}';
    }

        
    
}
