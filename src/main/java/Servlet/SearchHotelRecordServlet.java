package Servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Dao.DaoManager;
import beans.Hotel;
import dbc.DBConnector;

public class SearchHotelRecordServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String hotelType = req.getParameter("hotelType");

        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = req.getSession();
            //调用查询方法,将List数据打包
            List<Hotel> hotelListByType = manager.hotel_find_by_type(hotelType);
            System.out.println("show all" + hotelListByType.toString());
            session.setAttribute("hotelListByType", hotelListByType);
            //转发
            req.getRequestDispatcher("/jsp/HotelRecordListByType.jsp").forward(req, resp);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
