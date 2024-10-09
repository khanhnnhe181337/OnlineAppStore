/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Images {
   /*INSERT INTO [dbo].[AppImages]
           ([AppID]
           ,[ImageURL]
           ,[Description])
     VALUES
           (<AppID, int,>
           ,<ImageURL, nvarchar(255),>
           ,<Description, nvarchar(255),>)
GO*/
    private int imageID,appID;
    private String imageURL,description;

    public Images() {
    }

    public Images(int appID, String imageURL, String description) {
        this.appID = appID;
        this.imageURL = imageURL;
        this.description = description;
    }

    public Images(int imageID, int appID, String imageURL, String description) {
        this.imageID = imageID;
        this.appID = appID;
        this.imageURL = imageURL;
        this.description = description;
    }

    public int getImageID() {
        return imageID;
    }

    public void setImageID(int imageID) {
        this.imageID = imageID;
    }

    public int getAppID() {
        return appID;
    }

    public void setAppID(int appID) {
        this.appID = appID;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
