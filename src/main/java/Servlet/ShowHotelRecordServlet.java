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

public class ShowHotelRecordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = req.getSession();
            List<Hotel> hotelList= manager.hotel_find_all();
            System.out.println(hotelList.toString());

            //将list数据打包

            session.setAttribute("hotelList", hotelList);
            //req.setAttribute("hotelList", hotelList);
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
        try
        {
            HttpSession session = req.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            Hotel hotel = manager.hotel_find_by_ID(Integer.parseInt(req.getParameter("hotelObj")));
            System.out.println("Editing Hotel ID: " + req.getParameter("hotelObj"));
            session.setAttribute("editHotel", hotel);
            //req.getRequestDispatcher("EditHotelRecord.jsp").forward(req, resp);
        }
        catch (Exception e)
        {

        }


    }
}
