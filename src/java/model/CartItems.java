/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class CartItems {
    /*INSERT INTO [dbo].[CartItems]
           ([CartID]
           ,[AppID]
           ,[Quantity]
           ,[Price])
     VALUES
           (<CartID, int,>
           ,<AppID, int,>
           ,<Quantity, int,>
           ,<Price, decimal(10,2),>)*/
    private int cartItemID,cartID,appID,quantity;
    private float price;

    public CartItems() {
    }

    public CartItems(int appID, int quantity, float price) {
        this.appID = appID;
        this.quantity = quantity;
        this.price = price;
    }

    public CartItems(int cartID, int appID, int quantity, float price) {
        this.cartID = cartID;
        this.appID = appID;
        this.quantity = quantity;
        this.price = price;
    }

    public CartItems(int cartItemID, int cartID, int appID, int quantity, float price) {
        this.cartItemID = cartItemID;
        this.cartID = cartID;
        this.appID = appID;
        this.quantity = quantity;
        this.price = price;
    }

    public int getCartItemID() {
        return cartItemID;
    }

    public void setCartItemID(int cartItemID) {
        this.cartItemID = cartItemID;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public int getAppID() {
        return appID;
    }

    public void setAppID(int appID) {
        this.appID = appID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
}
