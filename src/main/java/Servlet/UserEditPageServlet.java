package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import beans.User;
import Dao.DaoManager;
import dbc.DBConnector;
import services.Encryption_Services;

@WebServlet(name = "UserEditPageServlet", value = "/UserEditPageServlet")
public class UserEditPageServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException
    {
        try
        {
            HttpSession session = request.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());

            //retrieve info from page
            int id = Integer.parseInt(request.getParameter("ID"));
            String name = request.getParameter("Name");
            String password = Encryption_Services.MD5Encryption(request.getParameter("Password"));
            String phoneNumber = request.getParameter("PhoneNumber");
            String payPassword = request.getParameter("PayPassword");

            //get user from session and update info
            User user = (User) session.getAttribute("user");
            user.setID(id);
            user.setName(name);
            user.setPassword(password);
            user.setPhoneNumber(phoneNumber);
            user.setPayPassword(payPassword);

            //update user in DB
            manager.user_update(user);
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
            HttpSession session = req.getSession();

            //DEBUG TESTING
            User user = new User();
            user.setID(12345);
            user.setName("MAX");
            user.setPassword("PASSWWORD");
            user.setType("SUPERMAN");
            user.setPhoneNumber("04123456789");
            user.setPicture(123456);
            user.setBalance(10000.00);
            user.setPayPassword("PASSWWORD");
            session.setAttribute("user", user);
        }
        catch (Exception e)
        {

        }
    }
}
