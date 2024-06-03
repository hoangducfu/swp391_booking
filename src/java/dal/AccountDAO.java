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
        String sql = "SELECT * FROM [dbo].[tbl_account] where email =? and statusGoogle = ?";
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

    public boolean addAccountGoogle(String mailUser, String nameUser) {
        String sql = "INSERT INTO [dbo].[tbl_account]\n"
                + "           ([email]\n"
                + "           ,[password]\n"
                + "           ,[statusGoogle]\n"
                + "           ,[roleId]\n"
                + "           ,[name])\n"
                + "     VALUES (?,null,1,2,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, mailUser);
            st.setString(2, nameUser);
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

    public boolean checkAccountExist(String email, String password) {
        String sql = "SELECT * FROM [dbo].[tbl_account] where email =? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            // kiem tra tai khoan nay co phai dang nhap bang gg hay k
//            st.setInt(3, 0);
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
        String sql = "SELECT * FROM [dbo].[tbl_account] where email =? ";
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
        String sql = "INSERT INTO [dbo].[tbl_account]\n"
                + "           ([email]\n"
                + "           ,[password]\n"
                + "           ,[statusGoogle]\n"
                + "           ,[roleId]\n"
                + "           ,[name])\n"
                + "     VALUES (?,?,0,2,null)";
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
        String sql = "UPDATE [dbo].[tbl_account]\n"
                + "   SET statusGoogle =1\n"
                + " WHERE email =?";
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
        String sql = "UPDATE [dbo].[tbl_account]\n"
                + "   SET password =?\n"
                + " WHERE email = ?";
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
