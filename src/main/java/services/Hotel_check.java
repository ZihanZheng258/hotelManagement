package services;
import beans.Hotel;



public class Hotel_check {


    public static Hotel hotel(int id) {
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
        return hotel;
    }

}
