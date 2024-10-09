/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author ADMIN
 */
public class DAO extends DBContext {

    //get all users
    public List<User> getListUser() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT [UserID], [Username], [Password], [Email], [CreatedDate], [Age], [RoleID] FROM [dbo].[Users]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new User(
                        rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Email"),
                        rs.getString("CreatedDate"), // Assuming createdDate is of type java.sql.Date
                        rs.getInt("Age"),
                        rs.getInt("RoleID")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Print the exception for debugging
        }
        return list;
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
        String sql = "delete from Users where UserID =? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User getUserByID(int id) {
        //lenh sql select * from categories cach 1:
        String sql = "select*from Users where UserID =?;";
        //cach 2: vao sql phai chuot vao bang chon scriptable as
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
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

    public void insert(User c) {
        String sql = "INSERT INTO Users\n"
                + "values (?,?,?,?,DEFAULT,?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getUserId());
            st.setString(2, c.getUserName());
            st.setString(3, c.getPassWord());
            st.setString(4, c.getEmail());
            st.setInt(5, c.getAge());
            st.setInt(6, c.getRoleId());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void update(User c) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET [UserID] = ?\n"
                + "      ,[Username] = ?\n"
                + "      ,[Password] = ?\n"
                + "      ,[Email] = ?\n"
                + "      ,[CreatedDate] = ?\n"
                + "      ,[Age] = ?\n"
                + "      ,[RoleID] = ?\n"
                + " WHERE UserID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getUserId());
            st.setString(2, c.getUserName());
            st.setString(3, c.getPassWord());
            st.setString(4, c.getEmail());
            st.setString(5, c.getCreatedDate());
            st.setInt(6, c.getAge());
            st.setInt(7, c.getRoleId());
            st.setInt(8, c.getUserId());
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }
    
    public void changePass(String passWord, int userId) {
        String sql = "update Users set password=? where UserID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, passWord);
            st.setInt(2, userId);
            
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
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
