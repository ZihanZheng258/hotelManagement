package Servlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Dao.DaoManager;
import beans.User;
import dbc.DBConnector;

public class ForgotPasswordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        String password = request.getParameter("password");

        try {
//            DaoManager manager = (DaoManager) session.getAttribute("manager");
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            User user = null;
            user = manager.user_find_by_ID(id);
            if( user != null){
//                session.setAttribute("Change",manager.user_update_password(id,password));
                manager.user_update_password(id,password);
                System.out.println("change password");


            }else{
                System.out.println("null");
            }
        }catch (SQLException ex) {
            System.out.println(ex.getErrorCode() + " and " + ex.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/jsp/signin.jsp").forward(request,response);
    }
}
