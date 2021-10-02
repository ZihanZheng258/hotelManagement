package services;
import beans.Hotel;
import Servlet.HotelServlet;


public class Hotel_check {


    public static beans.Hotel hotel(int id) {
        HotelServlet hotelCheck = new HotelServlet();
        beans.Hotel hotel = null;
        hotel = hotelCheck.hotel(id);
        return hotel;
    }
}
