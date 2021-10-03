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
import java.util.List;

public class ShowRoomServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = request.getSession();
            List<Room> rooms =  manager.room_find_all();
            System.out.println(rooms.toString());
            session.setAttribute("rooms", rooms);

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
        this.doPost(request,response);
    }

}