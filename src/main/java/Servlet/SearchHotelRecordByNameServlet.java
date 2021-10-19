package Servlet;

import Dao.DaoManager;
import beans.Hotel;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class SearchHotelRecordByNameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String hotelName = req.getParameter("hotelName");
        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = req.getSession();
            //调用查询方法,将List数据打包
            List<Hotel> hotelListByName = manager.hotel_find_by_name(hotelName);
            System.out.println("show all" + hotelListByName.toString());
            session.setAttribute("hotelListByName", hotelListByName);
            //转发
            req.getRequestDispatcher("/jsp/HotelRecordListByName.jsp").forward(req, resp);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
