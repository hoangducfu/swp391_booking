/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;

public class AccountDAO extends DBContext {

    public boolean checkAccountExistWithGoogle(String mailUser) {
        String sql = "SELECT *  FROM [dbo].[Account] where username =? and GoogleStatus =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, mailUser);
            // kiem tra tai khoan nay co phai dang nhap bang gg hay k
            st.setInt(2, 1);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public boolean addAccountGoogle(String email) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[phoneNumber]\n"
                + "           ,[birthdate]\n"
                + "           ,[GoogleStatus]\n"
                + "           ,[roleId])\n"
                + "     VALUES\n"
                + "           (?,null,null,null,1,3)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace(); // In ra toàn bộ dấu vết ngăn xếp
            System.out.println("err: " + e.getMessage());
        }
        return false;
    }

    public static void main(String[] args) {
        AccountDAO d = new AccountDAO();
//        d.addAccountGoogle("duc19602@gmail.com", "duc");
        if (d.addAccount("hoangvietduc19602@gmail.com", "96db4c126abc7bc183e2f338bb86a337")) {
            System.out.println("aaaa");
        } else {
            System.out.println("nnnn");
        }
    }

    // username là email
    public boolean checkAccountExist(String username, String password) {
        String sql = "SELECT [accountID]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[phoneNumber]\n"
                + "      ,[birthdate]\n"
                + "      ,[GoogleStatus]\n"
                + "      ,[roleId]\n"
                + "  FROM [dbo].[Account]\n"
                + "	where username =? and password =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;

    }

    public boolean checkAccountExist(String username) {
        String sql = "SELECT [accountID]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[phoneNumber]\n"
                + "      ,[birthdate]\n"
                + "      ,[GoogleStatus]\n"
                + "      ,[roleId]\n"
                + "  FROM [dbo].[Account]\n"
                + "	where username =?  ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public boolean addAccount(String username, String password) {
        // 0 là k liên kết với gg, 2 là customer
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[phoneNumber]\n"
                + "           ,[birthdate]\n"
                + "           ,[GoogleStatus]\n"
                + "           ,[roleId])\n"
                + "     VALUES\n"
                + "           (?,?,null,null,0,3)   ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace(); // In ra toàn bộ dấu vết ngăn xếp
            System.out.println("err: " + e.getMessage());
        }
        return false;
    }

    public boolean setAccountStatusWithGoogle(String mailUser) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [GoogleStatus] = 1\n"
                + " WHERE username =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, mailUser);
            st.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace(); // In ra toàn bộ dấu vết ngăn xếp
            System.out.println("err: " + e.getMessage());
        }
        return false;
    }

    public boolean setPassWordAccount(String username, String password) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [password] = ?\n"
                + " WHERE username =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            st.setString(2, username);
            st.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace(); // In ra toàn bộ dấu vết ngăn xếp
            System.out.println("err: " + e.getMessage());
        }
        return false;
    }

}
