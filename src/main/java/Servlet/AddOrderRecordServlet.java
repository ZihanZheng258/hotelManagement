package Servlet;

import beans.Order;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddOrderRecordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int orderID = Integer.parseInt(req.getParameter("orderID"));
        int userID = Integer.parseInt(req.getParameter("userID"));
        int roomID = Integer.parseInt(req.getParameter("roomID"));
        double amount = Double.parseDouble(req.getParameter("amount"));
        String status = req.getParameter("status");
        String remark = req.getParameter("remark");
        String startTime = req.getParameter("startTime");
        String endTime = req.getParameter("endTime");

        Order order = new Order();
        order.setId(orderID);
        order.setUserID(userID);
        order.setRoomID(roomID);
        order.setAmount(amount);
        order.setStatus(status);
        order.setRemark(remark);
        //order.setStart_time(startTime);
        //order.


    }
}
