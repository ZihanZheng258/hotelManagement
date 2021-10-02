package Servlet;

import Dao.DaoManager;
import beans.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import services.Encryption_Services;

public class DbunitSaveUser {
    public static void saveuser(User user) throws SQLException,ClassNotFoundException,ExecuteUpdateExpceptions{
        Connection conn = null;
        try {
            conn=DaoManager.getconnection();
            PreparedStatement pst = conn.prepareStatement("INSERT INTO `t_user`(`id`, `name`, `password`, `type`, "
                    + "`phone_number`, `picture_id`, `balance`, `pay_pwd`) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?);");
            pst.setInt(1,user.getID());
            pst.setString(2,user.getName());
            pst.setString(3,Encryption_Services.MD5Encryption(user.getPassword()));
            pst.setString(4,user.getType());
            pst.setString(5,user.getPhoneNumber());
            pst.setInt(6,user.getPicture());
            pst.setDouble(7,user.getBalance());
            pst.setString(8,user.getPayPassword());
            if (pst.executeUpdate() <= 0){
                throw  new ExecuteUpdateExpceptions();

            }

        }finally {
        conn.close();
        }
        }



    private static class ExecuteUpdateExpceptions extends Exception {
    }
}
