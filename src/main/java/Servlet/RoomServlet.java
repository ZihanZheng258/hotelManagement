package Servlet;

import Dao.DaoManager;
import beans.Room;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


public class RoomServlet extends HttpServlet {

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        int roomID = Integer.parseInt(request.getParameter("roomID"));
        String roomName = request.getParameter("roomName");
        int roomNumber = Integer.parseInt(request.getParameter("roomNumber"));
        double roomArea = Double.parseDouble(request.getParameter("roomArea"));
        String roomType = request.getParameter("roomType");
        double roomBedWidth = Double.parseDouble(request.getParameter("roomBedWidth"));
        double roomPrice = Double.parseDouble(request.getParameter("roomPrice"));
        int roomScore = Integer.parseInt(request.getParameter("roomScore"));
        int roomHotelID = Integer.parseInt(request.getParameter("roomHotelID"));
        String roomBookStatus= request.getParameter("roomBookStatus");
        int roomLevel = Integer.parseInt(request.getParameter("roomLevel"));
        String roomRemark = request.getParameter("roomRemark");


        Room room = new Room();
        room.setId(roomID);
        room.setName(roomName);
        room.setNumber(roomNumber);
        room.setArea(roomArea);
        room.setType(roomType);
        room.setBedWidth(roomBedWidth);
        room.setPrice(roomPrice);
        room.setBookStatus(roomBookStatus);
        room.setScore(roomScore);
        room.setHotelID(roomHotelID);
        room.setLevel(roomLevel);
        room.setRemark(roomRemark);
        room.setpicture(1);


        try{
              DaoManager manager = new DaoManager(new DBConnector().openConnection());
              manager.room_create(room);
              //System.out.println(roomID);
              Room room1 = manager.room_find_by_ID(roomID);
              if(room1 != null)
              {
                  System.out.println(room);
                  request.setAttribute("room1", room1);
                  request.getRequestDispatcher("AddRoomSuccess.jsp").forward(request,response);
              }else
              {

                  System.out.println("you room add is failed");
                  request.getRequestDispatcher("AddRoomError.jsp").forward(request, response);

              }


        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
            request.getRequestDispatcher("AddRoomError.jsp").forward(request, response);
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
            request.getRequestDispatcher("AddRoomError.jsp").forward(request, response);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            request.getRequestDispatcher("AddRoomError.jsp").forward(request, response);
        }

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}