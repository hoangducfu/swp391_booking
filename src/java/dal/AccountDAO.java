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

    public boolean addAccount(String username, String password, String roleid) {
        // 0 là k liên kết với gg, 2 là customer
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[phoneNumber]\n"
                + "           ,[birthdate]\n"
                + "           ,[GoogleStatus]\n"
                + "           ,[roleId])\n"
                + "     VALUES\n"
                + "           (?,?,null,null,0,?)   ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, roleid);
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

    public List<Account> getAllListAccountStaff() {
        List<Account> data = new ArrayList<>();
        String sql = "SELECT [accountID]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[phoneNumber]\n"
                + "      ,[birthdate]\n"
                + "      ,[GoogleStatus]\n"
                + "      ,[roleId]\n"
                + "  FROM [dbo].[Account]\n"
                + "	where roleId = 2  ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account acc;
                String id, username, password, phone, dob, statusGoogle, roleid;
                id = String.valueOf(rs.getInt("accountID"));
                username = rs.getString("username");
                password = rs.getString("password");
                phone = rs.getString("phoneNumber");
                dob = String.valueOf(rs.getDate("birthdate"));
                statusGoogle = String.valueOf(rs.getBoolean("GoogleStatus"));
                roleid = String.valueOf(rs.getInt("roleId"));
                acc = new Account(id, username, password, phone, dob, statusGoogle, roleid);
                data.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return data;
    }

    public List<Account> getAllListAccountCustomer() {
        List<Account> data = new ArrayList<>();
        String sql = "SELECT [accountID]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[phoneNumber]\n"
                + "      ,[birthdate]\n"
                + "      ,[GoogleStatus]\n"
                + "      ,[roleId]\n"
                + "  FROM [dbo].[Account]\n"
                + "	where roleId = 3  ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account acc;
                String id, username, password, phone, dob, statusGoogle, roleid;
                id = String.valueOf(rs.getInt("accountID"));
                username = rs.getString("username");
                password = rs.getString("password");
                phone = rs.getString("phoneNumber");
                dob = String.valueOf(rs.getDate("birthdate"));
                statusGoogle = String.valueOf(rs.getBoolean("GoogleStatus"));
                roleid = String.valueOf(rs.getInt("roleId"));
                acc = new Account(id, username, password, phone, dob, statusGoogle, roleid);
                data.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return data;
    }

    public List<Account> getAllListAccountCustomerByName(String name) {
        List<Account> data = new ArrayList<>();
        String sql = "SELECT [accountID]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[phoneNumber]\n"
                + "      ,[birthdate]\n"
                + "      ,[GoogleStatus]\n"
                + "      ,[roleId]\n"
                + "  FROM [dbo].[Account]\n"
                + "	where roleId = 3  ";
        if (name != null && name != "") {
            sql += " and username like '%" + name + "%'";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account acc;
                String id, username, password, phone, dob, statusGoogle, roleid;
                id = String.valueOf(rs.getInt("accountID"));
                username = rs.getString("username");
                password = rs.getString("password");
                phone = rs.getString("phoneNumber");
                dob = String.valueOf(rs.getDate("birthdate"));
                statusGoogle = String.valueOf(rs.getBoolean("GoogleStatus"));
                roleid = String.valueOf(rs.getInt("roleId"));
                acc = new Account(id, username, password, phone, dob, statusGoogle, roleid);
                data.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return data;
    }

    public List<Account> getAllListAccountStaffByName(String name) {
        List<Account> data = new ArrayList<>();
        String sql = "SELECT [accountID]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[phoneNumber]\n"
                + "      ,[birthdate]\n"
                + "      ,[GoogleStatus]\n"
                + "      ,[roleId]\n"
                + "  FROM [dbo].[Account]\n"
                + "	where roleId = 2  ";
        if (name != null && name != "") {
            sql += " and username like '%" + name + "%'";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account acc;
                String id, username, password, phone, dob, statusGoogle, roleid;
                id = String.valueOf(rs.getInt("accountID"));
                username = rs.getString("username");
                password = rs.getString("password");
                phone = rs.getString("phoneNumber");
                dob = String.valueOf(rs.getDate("birthdate"));
                statusGoogle = String.valueOf(rs.getBoolean("GoogleStatus"));
                roleid = String.valueOf(rs.getInt("roleId"));
                acc = new Account(id, username, password, phone, dob, statusGoogle, roleid);
                data.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return data;
    }

    public String getRoleId(String mailUser) {
        String sql = "SELECT [accountID]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[phoneNumber]\n"
                + "      ,[birthdate]\n"
                + "      ,[GoogleStatus]\n"
                + "      ,[roleId]\n"
                + "  FROM [dbo].[Account]\n"
                + "	where username = ?  ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, mailUser);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return String.valueOf(rs.getInt("roleId"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean addAccount(String email, String password, String phone, String dob, String position) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[phoneNumber]\n"
                + "           ,[birthdate]\n"
                + "           ,[GoogleStatus]\n"
                + "           ,[roleId])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,0,?)   ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            st.setString(3, phone);
            st.setString(4, dob);
            st.setString(5, position);
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

        d.deleteAccountById("2");
    }

    public void deleteAccountById(String id) {
        String sql = "DELETE FROM [dbo].[Account]\n"
                + "      WHERE accountID = ?   ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
            return;
        } catch (SQLException e) {
            e.printStackTrace(); // In ra toàn bộ dấu vết ngăn xếp
            System.out.println("err: " + e.getMessage());
        }
        return;
    }
}
