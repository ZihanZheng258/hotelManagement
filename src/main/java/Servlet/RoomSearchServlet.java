package Servlet;

import Dao.DaoManager;
import beans.Hotel;
import beans.Room;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class RoomSearchServlet extends HttpServlet {

    @Override

            protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int Id = Integer.parseInt(request.getParameter("Id"));


            try {


                System.out.println(Id);
                DaoManager manager = new DaoManager(new DBConnector().openConnection());
                HttpSession session = request.getSession();
                List<Room> Room = manager.room_find_by_hotel_ID(Id);
                session.setAttribute("Room", Room);
                System.out.println("show all" + Room.toString());



            } catch (SQLException ex) {
                System.out.println(ex.getErrorCode() + " and " + ex.getMessage());
            } catch (Exception e) {
                e.printStackTrace();
            }
            request.getRequestDispatcher("/jsp/RoomRecord2.jsp").forward(request, response);

    }

}
