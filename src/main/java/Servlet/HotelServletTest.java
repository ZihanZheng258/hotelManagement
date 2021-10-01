package Servlet;

import Dao.DaoManager;
import Dao.HotelDao;
import dbc.DBConnector;
import org.eclipse.persistence.jpa.jpql.Assert;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import beans.Hotel;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class HotelServletTest {

    DaoManager manager = new DaoManager(new DBConnector().openConnection());
    HotelDao hoteldao;
    HotelServlet hotelServlet;

    HotelServletTest() throws SQLException, ClassNotFoundException {
    }

    @BeforeEach
    void setUp() {

    }

    @Test
    void doGet() throws Exception {
        Connection conn = DaoManager.getconnection();
        Hotel hotel = new Hotel();
        hotel.setName("123");
        hotel.setId(127);
        hotel.setAddress("roseville");
        hotel.setpicture(1);
        hotel.setArea(123);
        hotel.setScore(12);
        hotel.setStar(12);
        hotel.setIntroduction("lol");
        hotel.setType("cabins");
        DbunitSaveHotel.savehotel(hotel);
        List<Hotel> hoteltest = manager.hotel_find_by_type_and_address("cabins","roseville");
        Assertions.assertNotNull(hoteltest);
        Assertions.assertEquals(hotel.getAddress(),"roseville");
        conn.close();
    }
}