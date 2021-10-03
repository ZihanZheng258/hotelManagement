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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        String name = request.getParameter("Name");
        String password = request.getParameter("Password");
        String phoneNumber = request.getParameter("PhoneNumber");
        String payPassword = request.getParameter("PayPassword");

        //get user from session and update info

        try
        {
            HttpSession session = request.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            User user = (User) session.getAttribute("user");
            user.setName(name);
            user.setPassword(password);
            user.setPhoneNumber(phoneNumber);
            user.setPayPassword(payPassword);
            session.setAttribute("user", user);
            //retrieve info from page


            //update user in DB'
            System.out.println(user.getID());

            boolean check =manager.user_update(user);
            if (check == false){
                System.out.println("fail update");
            }
            request.getRequestDispatcher("/jsp/UserPage.jsp").forward(request, response);
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
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            User user = manager.user_find_by_ID(123);
            session.setAttribute("user", user);
            //DEBUG TESTING

        }
        catch (Exception e)
        {

        }
    }
}
