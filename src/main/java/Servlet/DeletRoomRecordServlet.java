package Servlet;

import Dao.DaoManager;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class DeletRoomRecordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int roomid = Integer.parseInt(req.getParameter("roomid"));
        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            manager.room_delete(roomid);

            req.getRequestDispatcher("AdminPage").forward(req, resp);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("AdminPage").forward(req, resp);

    }
}