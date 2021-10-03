package Servlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Dao.DaoManager;
import beans.Hotel;
import dbc.DBConnector;

public class HotelServlet extends HttpServlet {

    @Override

            protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String address = request.getParameter("address");
        String type = request.getParameter("type");
        try {

            System.out.println(type);
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = request.getSession();
            List<Hotel> hotel = manager.hotel_find_by_type_and_address(type,address);
            session.setAttribute("hotel", hotel);

                System.out.println("show all"+hotel.toString());
                request.getRequestDispatcher("/jsp/jing/Cabinsindex.jsp").forward(request, response);





        }catch (SQLException ex) {
            System.out.println(ex.getErrorCode() + " and " + ex.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/jsp/jing/Cabinsindex.jsp").forward(request,response);
    }

}
