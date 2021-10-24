package Servlet;

import Dao.DaoManager;
import beans.Order;
import beans.Remark;
import beans.User;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ViewRemarkPageServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        try
        {
            int orderID = Integer.parseInt(req.getParameter("orderID"));
            HttpSession session = req.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            session.setAttribute("viewingRemark", manager.Remark_find_by_id(Integer.parseInt(manager.order_find_by_ID(orderID).getRemark())).getContent());
            session.setAttribute("viewingRemarkID",Integer.parseInt(manager.order_find_by_ID(orderID).getRemark()));
            System.out.println(" Now Viewing RemarkID: " + Integer.parseInt(manager.order_find_by_ID(orderID).getRemark()));
            System.out.println(" Remark Content: " + manager.Remark_find_by_id(Integer.parseInt(manager.order_find_by_ID(orderID).getRemark())).getContent());
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        req.getRequestDispatcher("ViewRemarkPage.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        try
        {
            String remark = req.getParameter("remark");
            int score = Integer.parseInt(req.getParameter("score"));
            int remarkID = Integer.parseInt(req.getParameter("remarkID"));
            System.out.println("Remark: " + remark);
            System.out.println("RemarkID: " + remarkID);
            System.out.println("Score: " + score);

            HttpSession session = req.getSession();
            User user = (User)session.getAttribute("user");
            Order order = (Order) session.getAttribute("remarkingOrder");
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            Remark newRemark = new Remark();
            newRemark.setRoomID(order.getRoomID());
            newRemark.setUserID(order.getUserID());
            newRemark.setUserName(user.getName());
            newRemark.setContent(remark);

            newRemark.setId(remarkID);
            newRemark.setScore(score);
            manager.Remark_Create(newRemark);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        req.getRequestDispatcher("UserPage.jsp").forward(req, resp);
    }
}
