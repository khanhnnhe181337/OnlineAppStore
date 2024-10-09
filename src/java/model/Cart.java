/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;
import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class Cart {
    /*CREATE TABLE Carts (
    CartID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT UNIQUE, -- Đảm bảo mỗi khách hàng chỉ có một giỏ hàng
    CreatedDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);*/
    private int cartID,userID;
    private LocalDateTime CreatedDate;
    private int totalAmount;

    public Cart() {
    }

    public Cart(int userID, int totalAmount) {
        this.userID = userID;
        this.totalAmount = totalAmount;
    }

    public Cart(int userID, LocalDateTime CreatedDate, int totalAmount) {
        this.userID = userID;
        this.CreatedDate = CreatedDate;
        this.totalAmount = totalAmount;
    }

    public Cart(int cartID, int userID, LocalDateTime CreatedDate, int totalAmount) {
        this.cartID = cartID;
        this.userID = userID;
        this.CreatedDate = CreatedDate;
        this.totalAmount = totalAmount;
    }
    
    
    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public LocalDateTime getCreatedDate() {
        return CreatedDate;
    }

    public void setCreatedDate(LocalDateTime CreatedDate) {
        this.CreatedDate = CreatedDate;
    }

    public int getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(int totalAmount) {
        this.totalAmount = totalAmount;
    }
    
}
