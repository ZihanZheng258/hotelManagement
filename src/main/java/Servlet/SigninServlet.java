package Servlet;

import Dao.DaoManager;
import beans.User;
import dbc.DBConnector;
import org.eclipse.persistence.internal.sessions.DirectCollectionChangeRecord;
import services.Encryption_Services;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "SigninServlet", value = "/SigninServlet")
public class SigninServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String password = request.getParameter("password");

        PrintWriter error = response.getWriter();

        try
        {
            HttpSession session = request.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            User user = null;
            user = manager.user_find_for_login(id, password);
            session.setAttribute("user",user);
            if (user != null) {
                System.out.println("Login Succeed");
                request.getRequestDispatcher("/jsp/UserPage.jsp").forward(request, response);
            } else {
                System.out.println("Login failed");
            }
        }
        catch (SQLException ex)
        {
            System.out.println(ex.getErrorCode() + " and " + ex.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        error.println("<script language='javascript'>alert('ID or Password is WRONG')</script>");
        error.println("<script language='javascript'>window.location.href='/hotelManagement_war/jsp/signin.jsp'</script>");
    }
}