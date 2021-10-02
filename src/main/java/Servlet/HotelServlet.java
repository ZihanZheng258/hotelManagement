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

            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = request.getSession();
            List<Hotel> hotel = manager.hotel_find_by_type_and_address(type,address);
            session.setAttribute("hotel", hotel);
            request.getRequestDispatcher("/jsp/jing/Cabinsindex.jsp").forward(request, response);

                System.out.println("show all"+hotel.toString());


        }catch (SQLException ex) {
            System.out.println(ex.getErrorCode() + " and " + ex.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/jsp/jing/Cabinsindex.jsp").forward(request,response);
    }
    public Hotel hotel(int id){
        Hotel hotel = null;
        hotel.setName("id");
        hotel.setId(id);
        hotel.setAddress("roseville");
        hotel.setpicture(1);
        hotel.setArea(123);
        hotel.setScore(12);
        hotel.setStar(12);
        hotel.setIntroduction("lol");
        hotel.setType("cabins");
        if (hotel.getId()== 127) {
            return hotel;
        }
        return null;
    }
}
