package Servlet;

import Dao.DaoManager;
import beans.Hotel;
import beans.Order;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AddOrderRecordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        int orderID = Integer.parseInt(req.getParameter("orderID"));
        int userID = Integer.parseInt(req.getParameter("userID"));
        int roomID = Integer.parseInt(req.getParameter("roomID"));
        double amount = Double.parseDouble(req.getParameter("amount"));
        String status = req.getParameter("status");
        String remark = req.getParameter("remark");
        //Date startTime = sdf.parse(req.getParameter("startTime"));
        //Date endTime = req.getParameter("endTime");

        Date eTime = null;
        Date sTime = null;





        Order order = new Order();
        order.setId(orderID);
        order.setUserID(userID);
        order.setRoomID(roomID);
        order.setAmount(amount);
        order.setStatus(status);
        order.setRemark(remark);


        try {
            order.setStart_time(sTime);
            order.setEnd_time(eTime);
            sTime = sdf.parse(startTime);
            eTime = sdf.parse(endTime);
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            manager.order_create(order);
            System.out.println(order.toString());
            Order order1 = manager.order_find_by_ID(orderID);
            if(order1 != null){
                System.out.println(order);
                req.setAttribute("order1", order1);

                req.getRequestDispatcher("AddOrderRecordSuccess.jsp").forward(req, resp);
            }else {
                System.out.println("添加失败");

                req.getRequestDispatcher("AddOrderRecordError.jsp").forward(req, resp);

            }

        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("AddOrderRecordError.jsp").forward(req, resp);

        }


    }
}
