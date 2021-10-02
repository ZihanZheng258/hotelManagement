package Servlet;

import Dao.DaoManager;
import Dao.UserDao;
import dbc.DBConnector;
import org.eclipse.persistence.jpa.jpql.Assert;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import beans.User;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class UserServletTest {

    DaoManager manager = new DaoManager(new DBConnector().openConnection());
    UserDao userdao;
    SigninServlet signinServlet;
    SignupServlet signupServlet;

    UserServletTest() throws SQLException, ClassNotFoundException {
    }

    @BeforeEach
    void setUp() {

    }

    @Test
    void doGet() throws Exception {
        Connection conn = DaoManager.getconnection();
        User user = new User();
        user.setName("Guy");
        user.setID(128);
        user.setPassword("admin");
        user.setPhoneNumber("0123123123");
        user.setType("customer");
        user.setPicture(123);
        user.setBalance(10000);
        user.setPayPassword("paypass");
        DbunitSaveUser.saveuser(user);
        List<User> usertest = (List<User>) manager.user_find_by_ID(128);
        Assertions.assertNotNull(usertest);
        Assertions.assertEquals(user.getType(), "customer");
        conn.close();
    }
}