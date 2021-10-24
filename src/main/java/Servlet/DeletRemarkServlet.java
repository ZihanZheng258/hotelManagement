package Servlet;

import Dao.DaoManager;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class DeletRemarkServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("Remarkid"));
        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            manager.Remark_delect_by_id(id);
            System.out.println(id);
            req.getRequestDispatcher("/jsp/RemarkRecord.jsp").forward(req, resp);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/jsp/RemarkRecord.jsp").forward(req, resp);

    }
}