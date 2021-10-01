package Servlet;

import Dao.DaoManager;
import beans.Hotel;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class ShowHotelRecordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            List<Hotel> hotelList= manager.hotel_find_all();
            //将list数据打包
            req.setAttribute("hotelList", hotelList);
            //转发
            req.getRequestDispatcher("/jsp/HotelRecord.jsp").forward(req, resp);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
