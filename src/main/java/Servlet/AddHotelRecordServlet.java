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

public class AddHotelRecordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        int hotelID = Integer.parseInt(req.getParameter("hotelID"));
        String hotelName = req.getParameter("hotelName");
        String hotelAddress = req.getParameter("hotelAddress");
        double hotelArea = Double.parseDouble(req.getParameter("hotelArea"));
        String hotelType = req.getParameter("hotelType");
        int hotelStar = Integer.parseInt(req.getParameter("hotelStar"));
        int hotelScore = Integer.parseInt(req.getParameter("hotelScore"));
        String hotelIntroduction = req.getParameter("hotelIntroduction");

        Hotel hotel = new Hotel();
        hotel.setId(hotelID);
        hotel.setName(hotelName);
        hotel.setAddress(hotelAddress);
        hotel.setArea(hotelArea);
        hotel.setType(hotelType);
        hotel.setStar(hotelStar);
        hotel.setScore(hotelScore);
        hotel.setIntroduction(hotelIntroduction);
        hotel.setpicture(1);

        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            manager.hotel_create(hotel);
            Hotel hotel1 = manager.hotel_find_by_ID(hotelID);
            if (hotel1 != null) {


                System.out.println(hotel);
                req.setAttribute("hotel1", hotel1);
                //req.getRequestDispatcher("HotelRecord.jsp").forward(req, resp);
                req.getRequestDispatcher("AddHotelRecordSuccess.jsp").forward(req, resp);
            } else {
                System.out.println("添加失败");
                //req.getRequestDispatcher("AddHotelRecord.jsp").forward(req, resp);
                req.getRequestDispatcher("AddHotelRecordError.jsp").forward(req, resp);
            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
            req.getRequestDispatcher("AddHotelRecordError.jsp").forward(req, resp);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            req.getRequestDispatcher("AddHotelRecordError.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("AddHotelRecordError.jsp").forward(req, resp);
        }


    }
}
