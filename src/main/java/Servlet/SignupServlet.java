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

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class SignupServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        //User user = (User)session.getAttribute("user");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phone_number");
        int ID = Integer.parseInt(request.getParameter("ID"));
   
        DaoManager manager = (DaoManager) session.getAttribute("manager");

        try
        {
            User exist = manager.user_find_by_ID(ID);
            User user = (User)session.getAttribute("user");
            if (exist != null)
            {
                session.setAttribute("existErr", "User alrteady exists in the Database!");
                request.getRequestDispatcher("register.jsp").include(request, response);
            }
            else
            {
                manager.user_create(user);
                //User user = new User(user);
                session.setAttribute("user", user);
                request.getRequestDispatcher("index.jsp").include(request, response);
            }
        }
        catch (SQLException ex)
        {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}