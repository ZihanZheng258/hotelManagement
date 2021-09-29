package Servlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Dao.DaoManager;
import beans.Hotel;
import beans.User;

public class HomeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String address = request.getParameter("address");
        String type= request.getParameter("type");
        DaoManager manager = (DaoManager) session.getAttribute("manager");

        try {
             manager.hotel_find_by_type_and_address(type,address);

                System.out.println("show all");


        }catch (SQLException ex) {
            System.out.println(ex.getErrorCode() + " and " + ex.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}
