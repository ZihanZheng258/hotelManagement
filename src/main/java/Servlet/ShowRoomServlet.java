package Servlet;

import Dao.DaoManager;
import beans.Room;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class ShowRoomServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int roomID = Integer.parseInt(request.getParameter("roomID"));
        try {
                DaoManager manager = new DaoManager(new DBConnector().openConnection());
                HttpSession session = request.getSession();
                ArrayList<Room> rooms = (ArrayList<Room>) manager.room_find_all(roomID);
                System.out.println(rooms.toString());
                //request.setAttribute("Room", rooms);
                request.getRequestDispatcher("/jsp/RoomRecord.jsp").forward(request, response);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

}