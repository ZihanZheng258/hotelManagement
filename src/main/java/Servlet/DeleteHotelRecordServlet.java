package Servlet;

import Dao.DaoManager;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class DeleteHotelRecordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int hotelID = Integer.parseInt(req.getParameter("hotelID"));
        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            boolean flag = manager.hotel_delete(hotelID);
            if(flag==true){
                resp.sendRedirect("/jsp/HotelRecord.jsp");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
