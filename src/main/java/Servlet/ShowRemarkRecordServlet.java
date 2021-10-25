package Servlet;

import Dao.DaoManager;
import beans.Order;
import beans.Remark;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

public class ShowRemarkRecordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int RemarkUserid = Integer.parseInt(req.getParameter("Userid"));
        PrintWriter error = resp.getWriter();
        try {

            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = req.getSession();
            List<Remark> Remark= manager.Remark_find_by_UserID(RemarkUserid);
            if(Remark.size() == 0){
                error.println("<script language='javascript'>alert('Remark format is WRONG!! Please try again')</script>");
                error.println("<script language='javascript'>window.location.href='/hotelManagement_war/jsp/RemarkRecord.jsp'</script>");

            }else {
                System.out.println(Remark.toString());
                session.setAttribute("Remark", Remark);
                req.getRequestDispatcher("/jsp/RemarkRecord.jsp").forward(req, resp);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
