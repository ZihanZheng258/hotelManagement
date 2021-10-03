package Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import beans.Room;
import Dao.DaoManager;
import dbc.DBConnector;
public class EditRoomRecordServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //retrieve info from page
        String name = request.getParameter("Name");
        String number = request.getParameter("Number");
        String type = request.getParameter("Type");
        String area = request.getParameter("Area");
        String bedWidth = request.getParameter("BedWidth");
        String bookStatus = request.getParameter("BookStatus");
        String price = request.getParameter("Price");
        String score = request.getParameter("Score");
        String remark = request.getParameter("Remark");
        String level = request.getParameter("Level");
        String hotelID = request.getParameter("HotelID");

        try
        {
            //get user from session and update info
            HttpSession session = request.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            Room room = (Room) session.getAttribute("editRoom");
            room.setName(name);
            room.setNumber(Integer.parseInt(number));
            room.setType(type);
            room.setArea(Double.parseDouble(area));
            room.setBedWidth(Double.parseDouble(bedWidth));
            room.setBookStatus(bookStatus);
            room.setPrice(Double.parseDouble(price));
            room.setScore(Integer.parseInt(score));
            room.setRemark(remark);
            room.setLevel(Integer.parseInt(level));
            room.setHotelID(Integer.parseInt(hotelID));

            //update room in DB
            manager.room_update(room);

            request.getRequestDispatcher("AdminPage").forward(request, response);
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
