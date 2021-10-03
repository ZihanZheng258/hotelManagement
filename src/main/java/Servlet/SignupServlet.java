package Servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

import java.util.logging.Level;
import java.util.logging.Logger;

import beans.User;
import Dao.DaoManager;
import dbc.DBConnector;
import services.Encryption_Services;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;



@WebServlet(name = "SignupServlet", value = "/SignupServlet")
public class SignupServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String type = request.getParameter("type");
        String phoneNumber = request.getParameter("phone_number");
        int picture = Integer.parseInt(request.getParameter("picture_id"));
        double balance = Double.parseDouble(request.getParameter("balance"));
        String paypassword = request.getParameter("paypassword");

        User user = new User();
        user.setID(id);
        user.setName(name);
        user.setPassword(password);
        user.setType(type);
        user.setPhoneNumber(phoneNumber);
        user.setPicture(picture);
        user.setBalance(balance);
        user.setPayPassword(paypassword);

        try
        {
            HttpSession session = request.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            manager.user_create(user);
            User user_exist = manager.user_find_by_ID(id);
            session.setAttribute("user", user);
            if (user_exist != null) {
                System.out.println(user);
                request.setAttribute("user_exist", user_exist);
                request.getRequestDispatcher("/jsp/UserPage.jsp").forward(request, response);
            } else {
                System.out.println("Create failed");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        }
        catch (SQLException ex)
        {
            System.out.println(ex.getErrorCode() + " and " + ex.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}