/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class User {
    /*CREATE TABLE Users (
    UserID INT PRIMARY KEY, 
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(255) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    RoleID INT FOREIGN KEY REFERENCES Roles(RoleID)
);*/
    private int userId;
    private String userName,passWord,email,createdDate;
    private int age,roleId;

    public User() {
    }

    public User(int userId, String userName, String passWord, String email, String createdDate, int age, int roleId) {
        this.userId = userId;
        this.userName = userName;
        this.passWord = passWord;
        this.email = email;
        this.createdDate = createdDate;
        this.age = age;
        this.roleId = roleId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
    
    
}

   