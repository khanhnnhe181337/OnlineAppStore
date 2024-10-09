/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.awt.Image;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Application;
import model.Category;
import model.Developer;
import model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import model.Images;

/**
 *
 * @author ADMIN
 */
public class AppChartDAO extends DBContext {

    public void insert(Images c) {
        String sql = "INSERT INTO [dbo].[AppImages]\n"
                + "           ([AppID]\n"
                + "           ,[ImageURL]\n"
                + "           ,[Description])\n"
                + "     VALUES\n"
                + "           (?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getAppID());
            st.setString(2, c.getImageURL());
            st.setString(3, c.getDescription());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void deleteImg(int id) {
        String sql = "delete from AppImages where ImageID =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateImg(Images c) {
        String sql = "UPDATE [dbo].[AppImages]\n"
                + "   SET [AppID] = ?\n"
                + "      ,[ImageURL] = ?\n"
                + "      ,[Description] = ?\n"
                + " WHERE ImageID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getAppID());
            st.setString(2, c.getImageURL());
            st.setString(3, c.getDescription());
            st.setInt(4, c.getImageID());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public List<Images> getListImg() {
        List<Images> list = new ArrayList<>();
        String sql = "SELECT [ImageID]\n"
                + "      ,[AppID]\n"
                + "      ,[ImageURL]\n"
                + "      ,[Description]\n"
                + "  FROM [dbo].[AppImages]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Images i = new Images(rs.getInt("imageID"),
                        rs.getInt("appID"),
                        rs.getString("imageURL"), rs.getString("description"));
                list.add(i);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    public List<Category> getListCate() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT [CategoryID]\n"
                + "      ,[CategoryName]\n"
                + "  FROM [dbo].[Categories]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category i = new Category(rs.getInt("categoryID"), rs.getString("categoryName"));
                list.add(i);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    public List<Images> getListImgById(int id) {
        List<Images> list = new ArrayList<>();
        String sql = "SELECT [ImageID]\n"
                + "      ,[AppID]\n"
                + "      ,[ImageURL]\n"
                + "      ,[Description]\n"
                + "  FROM [dbo].[AppImages] where AppID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Images i = new Images(rs.getInt("imageID"),
                        rs.getInt("appID"),
                        rs.getString("imageURL"), rs.getString("description"));
                list.add(i);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    public List<Developer> getListDeveloper() {
        List<Developer> list = new ArrayList<>();
        String sql = "SELECT [DeveloperID]\n"
                + "      ,[Name]\n"
                + "      ,[Email]\n"
                + "      ,[Website]\n"
                + "      ,[ProfileImageURL]\n"
                + "      ,[CreatedDate]\n"
                + "  FROM [dbo].[Developers]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Developer d = new Developer(rs.getInt("developerID"),
                        rs.getString("name"), rs.getString("email"),
                        rs.getString("website"),
                        rs.getString("profileImageURL"), rs.getString("createdDate"));

                list.add(d);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    public List<Category> getListCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT [CategoryID]\n"
                + "      ,[CategoryName]\n"
                + "  FROM [dbo].[Categories]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Category c = new Category(rs.getInt("categoryID"),
                        rs.getString("categoryName"));

                list.add(c);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    //get all users
    public List<Application> getListApp() {
        List<Application> list = new ArrayList<>();
        String sql = "SELECT [AppID]\n"
                + "      ,[AppName]\n"
                + "      ,[DeveloperID]\n"
                + "      ,[CategoryID]\n"
                + "      ,[Description]\n"
                + "      ,[ReleaseDate]\n"
                + "      ,[Price]\n"
                + "      ,[AppImageURL]\n"
                + "      ,[DownloadURL]\n"
                + "      ,[DownloadCount]\n"
                + "      ,[TotalRevenue]\n"
                + "      ,[RAM]\n"
                + "      ,[Storage]\n"
                + "      ,[GraphicsCard]\n"
                + "      ,[CPU]\n"
                + "      ,[OS]\n"
                + "      ,[AgeRating]\n"
                + "  FROM [dbo].[Apps]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Application a = new Application(rs.getInt("AppID"), rs.getString("AppName"),
                        rs.getInt("DeveloperID"), rs.getInt("CategoryID"),
                        rs.getString("Description"), rs.getString("ReleaseDate"),
                        rs.getFloat("Price"), rs.getString("AppImageURL"),
                        rs.getString("DownloadURL"), rs.getInt("DownloadCount"),
                        rs.getFloat("TotalRevenue"), rs.getString("RAM"),
                        rs.getString("Storage"), rs.getString("GraphicsCard"),
                        rs.getString("CPU"), rs.getString("OS"), rs.getInt("AgeRating"));

                list.add(a);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }
    
    public List<Application> getAppRevenueList() {
    List<Application> list = new ArrayList<>();
    String sql = "SELECT [AppName], [TotalRevenue] FROM [dbo].[Apps]";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            Application a = new Application();
            a.setAppName(rs.getString("AppName"));
            a.setTotalRevenue(rs.getFloat("TotalRevenue"));
            list.add(a);
        }
    } catch (SQLException e) {
        System.err.println(e);
    }
    return list;
}

    public void insert(Application c) {
        String sql = "INSERT INTO [dbo].[Apps] "
                + "([AppName], [DeveloperID], [CategoryID], [Description], [ReleaseDate], [Price], [AppImageURL], "
                + "[DownloadURL], [DownloadCount], [TotalRevenue], [RAM], [Storage], [GraphicsCard], [CPU], [OS], [AgeRating]) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getAppName());
            st.setInt(2, c.getDeveloperID());
            st.setInt(3, c.getCategoryID());
            st.setString(4, c.getDescription());

            // Assuming ReleaseDate is a java.sql.Date
            st.setString(5, c.getReleaseDate());

            st.setFloat(6, c.getPrice());
            st.setString(7, c.getAppImageURL());
            st.setString(8, c.getDownloadURL());
            st.setInt(9, c.getDownloadCount());
            st.setFloat(10, c.getTotalRevenue());
            st.setString(11, c.getRAM());
            st.setString(12, c.getStorage());
            st.setString(13, c.getGraphicsCard());
            st.setString(14, c.getCPU());
            st.setString(15, c.getOS());
            st.setInt(16, c.getAgeRating());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateAppInfo(float t,int d,int app) {
        String sql = "update Apps \n"
                + "set TotalRevenue=TotalRevenue+?,DownloadCount=DownloadCount+?\n"
                + "where AppID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setFloat(1, t);
            st.setInt(2, d);
            st.setInt(3, app);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Application c) {
        String sql = "UPDATE [dbo].[Apps]\n"
                + "   SET [AppName] = ?\n"
                + "      ,[DeveloperID] = ?\n"
                + "      ,[CategoryID] = ?\n"
                + "      ,[Description] = ?\n"
                + "      ,[ReleaseDate] = ?\n"
                + "      ,[Price] = ?\n"
                + "      ,[AppImageURL] = ?\n"
                + "      ,[DownloadURL] = ?\n"
                + "      ,[DownloadCount] = ?\n"
                + "      ,[TotalRevenue] = ?\n"
                + "      ,[RAM] = ?\n"
                + "      ,[Storage] = ?\n"
                + "      ,[GraphicsCard] = ?\n"
                + "      ,[CPU] = ?\n"
                + "      ,[OS] = ?\n"
                + "      ,[AgeRating] = ?\n"
                + " WHERE AppID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getAppName());
            st.setInt(2, c.getDeveloperID());
            st.setInt(3, c.getCategoryID());
            st.setString(4, c.getDescription());
            st.setString(5, c.getReleaseDate());
            st.setFloat(6, c.getPrice());
            st.setString(7, c.getAppImageURL());
            st.setString(8, c.getDownloadURL());
            st.setInt(9, c.getDownloadCount());
            st.setFloat(10, c.getTotalRevenue());
            st.setString(11, c.getRAM());
            st.setString(12, c.getStorage());
            st.setString(13, c.getGraphicsCard());
            st.setString(14, c.getCPU());
            st.setString(15, c.getOS());
            st.setInt(16, c.getAgeRating());
            st.setInt(17, c.getAppID());

            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public User checkAuthen(String username, String password) {
        String sql = "select * from Users where (Username=? or Email=?) and Password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, username);
            st.setString(3, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getInt("userId"), username, password, rs.getString("email"), rs.getString("createdDate"), rs.getInt("age"), rs.getInt("roleId"));
                return u;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void delete(int id) {
        String sql = "delete from Apps where AppID =? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Application getAppByID(int id) {
        //lenh sql select * from categories cach 1:
        String sql = "select*from Apps where AppID=?;";
        //cach 2: vao sql phai chuot vao bang chon scriptable as
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Application a = new Application(rs.getInt("AppID"), rs.getString("AppName"),
                        rs.getInt("DeveloperID"), rs.getInt("CategoryID"),
                        rs.getString("Description"), rs.getString("ReleaseDate"),
                        rs.getFloat("Price"), rs.getString("AppImageURL"),
                        rs.getString("DownloadURL"), rs.getInt("DownloadCount"),
                        rs.getFloat("TotalRevenue"), rs.getString("RAM"),
                        rs.getString("Storage"), rs.getString("GraphicsCard"),
                        rs.getString("CPU"), rs.getString("OS"), rs.getInt("AgeRating"));

                return a;

            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public List<Application> getListByCateID(int id) {
        List<Application> list = new ArrayList<>();
        //lenh sql select * from categories cach 1:
        String sql = "select*from Apps where CategoryID=?;";
        //cach 2: vao sql phai chuot vao bang chon scriptable as
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Application a = new Application(rs.getInt("AppID"), rs.getString("AppName"),
                        rs.getInt("DeveloperID"), rs.getInt("CategoryID"),
                        rs.getString("Description"), rs.getString("ReleaseDate"),
                        rs.getFloat("Price"), rs.getString("AppImageURL"),
                        rs.getString("DownloadURL"), rs.getInt("DownloadCount"),
                        rs.getFloat("TotalRevenue"), rs.getString("RAM"),
                        rs.getString("Storage"), rs.getString("GraphicsCard"),
                        rs.getString("CPU"), rs.getString("OS"), rs.getInt("AgeRating"));

                list.add(a);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Application> getListByDevID(int id) {
        List<Application> list = new ArrayList<>();
        //lenh sql select * from categories cach 1:
        String sql = "select*from Apps where DeveloperID=?;";
        //cach 2: vao sql phai chuot vao bang chon scriptable as
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Application a = new Application(rs.getInt("AppID"), rs.getString("AppName"),
                        rs.getInt("DeveloperID"), rs.getInt("CategoryID"),
                        rs.getString("Description"), rs.getString("ReleaseDate"),
                        rs.getFloat("Price"), rs.getString("AppImageURL"),
                        rs.getString("DownloadURL"), rs.getInt("DownloadCount"),
                        rs.getFloat("TotalRevenue"), rs.getString("RAM"),
                        rs.getString("Storage"), rs.getString("GraphicsCard"),
                        rs.getString("CPU"), rs.getString("OS"), rs.getInt("AgeRating"));

                list.add(a);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public User getUserByName(String name, String email) {
        //lenh sql select * from categories cach 1:
        String sql = "select*from Users where Username =? or Email =?";
        //cach 2: vao sql phai chuot vao bang chon scriptable as
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User c = new User(rs.getInt("userId"), rs.getString("userName"),
                        rs.getString("passWord"), rs.getString("email"),
                        rs.getString("createdDate"), rs.getInt("age"), rs.getInt("roleId"));

                return c;

            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    /*
    public void insertCompany(Company c) {
        String sql = "INSERT INTO [dbo].[Company]\n"
                + "           ([CompanyCode]\n"
                + "           ,[CompanyName])\n"
                + "     VALUES\n"
                + "           (?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getCompanyCode());
            st.setString(2, c.getCompanyName());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Job c) {
        String sql = "UPDATE [dbo].[Job]\n"
                + "   SET [JobTitle] = ?\n"
                + "      ,[CompanyCode] = ?\n"
                + "      ,[YearExp] = ?\n"
                + "      ,[Description] = ?\n"
                + " WHERE ID=?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getJobTitle());
            st.setString(2, c.getCompanyCode());
            st.setInt(3, c.getYearExp());
            st.setString(4, c.getDescription());
            st.setInt(5, c.getId());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }
     */
}
