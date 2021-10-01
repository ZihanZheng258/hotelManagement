package Servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Dao.DaoManager;
import beans.Hotel;
import dbc.DBConnector;

public class DbunitSaveHotel {
    public static void savehotel(Hotel hotel) throws SQLException,ClassNotFoundException,ExecuteUpdateExpceptions{
        Connection conn = null;
        try {
            conn=DaoManager.getconnection();
            PreparedStatement pst = conn.prepareStatement("INSERT INTO `t_hotel`(`id`, `name`, `address`, `type`, `area`, `star`, `score`, `introduction`, `picture_id`) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);");
            pst.setInt(1,hotel.getId());
            pst.setString(2,hotel.getName());
            pst.setString(3,hotel.getAddress());
            pst.setString(4,hotel.getType());
            pst.setDouble(5,hotel.getArea());
            pst.setInt(6,hotel.getStar());
            pst.setInt(7,hotel.getScore());
            pst.setString(8,hotel.getIntroduction());
            pst.setInt(9,hotel.getId());
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
