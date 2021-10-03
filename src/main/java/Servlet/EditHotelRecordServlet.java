package Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import beans.Hotel;
import Dao.DaoManager;
import dbc.DBConnector;

public class EditHotelRecordServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //retrieve info from page
        String name = request.getParameter("Name");
        String address = request.getParameter("Password");
        String type = request.getParameter("PhoneNumber");
        String area = request.getParameter("PayPassword");
        String star = request.getParameter("PayPassword");
        String score = request.getParameter("PayPassword");
        String introduction = request.getParameter("PayPassword");
        String picture = request.getParameter("PayPassword");

        try
        {
            //get user from session and update info
            HttpSession session = request.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            Hotel hotel = (Hotel) session.getAttribute("editHotel");
            hotel.setName(name);
            hotel.setAddress(address);
            hotel.setType(type);
            hotel.setArea(Double.parseDouble(area));
            hotel.setStar(Integer.parseInt(star));
            hotel.setScore(Integer.parseInt(score));
            hotel.setIntroduction(introduction);
            hotel.setpicture(Integer.parseInt(picture));

            //update hotel in DB
            manager.hotel_update(hotel);

            request.getRequestDispatcher("Admin").forward(request, response);
        }
        catch (Exception e)
        {

        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        try
        {

        }
        catch (Exception e)
        {

        }
    }
}