package Servlet;

import Dao.DaoManager;
import Dao.HotelDao;
import dbc.DBConnector;
import org.eclipse.persistence.jpa.jpql.Assert;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import beans.Hotel;

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

        List<Hotel> hotel = manager.hotel_find_by_type_and_address("cabins","123");
        Assertions.assertNotNull(hotel);
    }
}