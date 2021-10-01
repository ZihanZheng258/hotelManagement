package Servlet;

import Dao.DaoManager;
import beans.User;
import dbc.DBConnector;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.*;

class ForgotPasswordServletTest {

    DaoManager manager = new DaoManager(new DBConnector().openConnection());

    ForgotPasswordServletTest() throws SQLException, ClassNotFoundException {
    }

    @BeforeEach
    void setUp() {
    }

    @Test
    void doPost() throws Exception {
        User user = null;
        user = manager.user_find_by_ID(1);
        Assertions.assertNotNull(user);
    }
}