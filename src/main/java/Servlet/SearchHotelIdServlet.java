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
import beans.Room;
import dbc.DBConnector;
public class SearchHotelIdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int hotelid = Integer.parseInt(request.getParameter("hotelid"));

        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = request.getSession();
            List<Room> room = manager.room_find_by_hotel_ID(hotelid);
            System.out.println(hotelid);
            session.setAttribute("room", room);
            request.getRequestDispatcher("/jsp/Cottagedetail2.jsp").forward(request, response);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/jsp/Cabinsindex.jsp").forward(request, response);




    }


}
