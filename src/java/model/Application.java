/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Application {
    /*
     VALUES
           (<AppName, nvarchar(255),>
           ,<DeveloperID, int,>
           ,<CategoryID, int,>
           ,<Description, nvarchar(max),>
           ,<ReleaseDate, datetime,>
           ,<Price, decimal(10,2),>
           ,<AppImageURL, nvarchar(255),>
           ,<DownloadURL, nvarchar(255),>
           ,<DownloadCount, int,>
           ,<TotalRevenue, decimal(18,2),>
           ,<RAM, nvarchar(50),>
           ,<Storage, nvarchar(50),>
           ,<GraphicsCard, nvarchar(50),>
           ,<CPU, nvarchar(50),>
           ,<OS, nvarchar(50),>)
    */
    private int AppID;
    private String AppName;
    private int DeveloperID,CategoryID;
    private String Description, ReleaseDate;
    private float Price;
    private String AppImageURL,DownloadURL;
    private int DownloadCount;
    private float TotalRevenue;
    private String RAM,Storage,GraphicsCard,CPU,OS;
    private int AgeRating;

    public Application() {
    }

    public Application(String AppName, int DeveloperID, int CategoryID, String Description, String ReleaseDate, float Price, String AppImageURL, String DownloadURL, int DownloadCount, float TotalRevenue, String RAM, String Storage, String GraphicsCard, String CPU, String OS, int AgeRating) {
        this.AppName = AppName;
        this.DeveloperID = DeveloperID;
        this.CategoryID = CategoryID;
        this.Description = Description;
        this.ReleaseDate = ReleaseDate;
        this.Price = Price;
        this.AppImageURL = AppImageURL;
        this.DownloadURL = DownloadURL;
        this.DownloadCount = DownloadCount;
        this.TotalRevenue = TotalRevenue;
        this.RAM = RAM;
        this.Storage = Storage;
        this.GraphicsCard = GraphicsCard;
        this.CPU = CPU;
        this.OS = OS;
        this.AgeRating = AgeRating;
    }
    
    public Application(int AppID, String AppName, int DeveloperID, int CategoryID, String Description, String ReleaseDate, float Price, String AppImageURL, String DownloadURL, int DownloadCount, float TotalRevenue, String RAM, String Storage, String GraphicsCard, String CPU, String OS, int AgeRating) {
        this.AppID = AppID;
        this.AppName = AppName;
        this.DeveloperID = DeveloperID;
        this.CategoryID = CategoryID;
        this.Description = Description;
        this.ReleaseDate = ReleaseDate;
        this.Price = Price;
        this.AppImageURL = AppImageURL;
        this.DownloadURL = DownloadURL;
        this.DownloadCount = DownloadCount;
        this.TotalRevenue = TotalRevenue;
        this.RAM = RAM;
        this.Storage = Storage;
        this.GraphicsCard = GraphicsCard;
        this.CPU = CPU;
        this.OS = OS;
        this.AgeRating = AgeRating;
    }

    public int getAppID() {
        return AppID;
    }

    public void setAppID(int AppID) {
        this.AppID = AppID;
    }

    public String getAppName() {
        return AppName;
    }

    public void setAppName(String AppName) {
        this.AppName = AppName;
    }

    public int getDeveloperID() {
        return DeveloperID;
    }

    public void setDeveloperID(int DeveloperID) {
        this.DeveloperID = DeveloperID;
    }

    public int getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(int CategoryID) {
        this.CategoryID = CategoryID;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(String ReleaseDate) {
        this.ReleaseDate = ReleaseDate;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    public String getAppImageURL() {
        return AppImageURL;
    }

    public void setAppImageURL(String AppImageURL) {
        this.AppImageURL = AppImageURL;
    }

    public String getDownloadURL() {
        return DownloadURL;
    }

    public void setDownloadURL(String DownloadURL) {
        this.DownloadURL = DownloadURL;
    }

    public int getDownloadCount() {
        return DownloadCount;
    }

    public void setDownloadCount(int DownloadCount) {
        this.DownloadCount = DownloadCount;
    }

    public float getTotalRevenue() {
        return TotalRevenue;
    }

    public void setTotalRevenue(float TotalRevenue) {
        this.TotalRevenue = TotalRevenue;
    }

    public String getRAM() {
        return RAM;
    }

    public void setRAM(String RAM) {
        this.RAM = RAM;
    }

    public String getStorage() {
        return Storage;
    }

    public void setStorage(String Storage) {
        this.Storage = Storage;
    }

    public String getGraphicsCard() {
        return GraphicsCard;
    }

    public void setGraphicsCard(String GraphicsCard) {
        this.GraphicsCard = GraphicsCard;
    }

    public String getCPU() {
        return CPU;
    }

    public void setCPU(String CPU) {
        this.CPU = CPU;
    }

    public String getOS() {
        return OS;
    }

    public void setOS(String OS) {
        this.OS = OS;
    }

    public int getAgeRating() {
        return AgeRating;
    }

    public void setAgeRating(int AgeRating) {
        this.AgeRating = AgeRating;
    }


    
}
