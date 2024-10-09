/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Developer {
    /*INSERT INTO [dbo].[Developers]
           ([Name]
           ,[Email]
           ,[Website]
           ,[ProfileImageURL]
           ,[CreatedDate])
     VALUES
           (<Name, nvarchar(255),>
           ,<Email, nvarchar(255),>
           ,<Website, nvarchar(255),>
           ,<ProfileImageURL, nvarchar(255),>
           ,<CreatedDate, datetime,>)*/
    private int developerID;
    private String name,email,website,profileImageURL,createdDate;

    public Developer() {
    }

    public Developer(int developerID, String name, String email, String website, String profileImageURL, String createdDate) {
        this.developerID = developerID;
        this.name = name;
        this.email = email;
        this.website = website;
        this.profileImageURL = profileImageURL;
        this.createdDate = createdDate;
    }

    public int getDeveloperID() {
        return developerID;
    }

    public void setDeveloperID(int developerID) {
        this.developerID = developerID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getProfileImageURL() {
        return profileImageURL;
    }

    public void setProfileImageURL(String profileImageURL) {
        this.profileImageURL = profileImageURL;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }
    
    
    
}
