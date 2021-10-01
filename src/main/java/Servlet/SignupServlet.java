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

@WebServlet(name = "SignupServlet", value = "/SignupServlet")
public class SignupServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //HttpSession session = request.getSession();

        //User user = (User)session.getAttribute("user");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phone_number");
        String type = request.getParameter("type");

        //int id = Integer.parseInt(request.getParameter("id"));
        //int id = 0;
        //User user_exist = null;
        //User user = null;
//        user.setID(0);
//        user.setPicture(0);
//        user.setPhoneNumber(phoneNumber);
//        user.setPassword(password);
//        user.setPicture(0);
//        user.setBalance(0);
//        user.setName(name);
//        user.setPayPassword(null);
//        user.setType(null);
   
        //DaoManager manager = (DaoManager) session.getAttribute("manager");

        try
        {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
//            user_exist = manager.user_find_by_ID(id);
//
//            if (user_exist != null)
//            {
//                //session.setAttribute("existErr", "User already exists in the Database!");
//                System.out.println("User already exists in the Database!");
//                user.setID(0);
//                User user_exist = null;
//            }
//            else
//            {
                User user = null;
            //user.setID(0);
//            user.setName(name);
//            user.setPassword(password);
//            user.setType(type);
//            user.setPhoneNumber(phoneNumber);
//            user.setPicture(1);
//            user.setBalance(1);
//            user.setPayPassword(password);
//                manager.user_create(user);
                System.out.println("Account Created");
                //User user = new User(user);
                //session.setAttribute("user", user);
//            }
        }
        catch (SQLException ex)
        {
            System.out.println(ex.getErrorCode() + " and " + ex.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}