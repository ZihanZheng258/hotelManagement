package Servlet;

import Dao.DaoManager;
import dbc.DBConnector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class DeleteHotelRecordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int hotelID = Integer.parseInt(req.getParameter("hotelID"));
        PrintWriter error = resp.getWriter();
        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            manager.hotel_delete(hotelID);

                req.getRequestDispatcher("Admin").forward(req, resp);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        error.println("<script language='javascript'>alert('ID is WRONG')</script>");
        error.println("<script language='javascript'>window.location.href='/hotelManagement_war/jsp/HotelRecord.jsp'</script>");



    }
}
