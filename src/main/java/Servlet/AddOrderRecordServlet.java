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
import java.util.List;

public class AddOrderRecordServlet extends HttpServlet {
//    private int getRoomID(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

//        return roomID;
//    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int roomID = Integer.parseInt(req.getParameter("roomID"));
        System.out.println("add roomID success");

        //跳转页面
        try {
            int orderID;
            int userID = Integer.parseInt(req.getParameter("userID"));
            double amount = Double.parseDouble(req.getParameter("amount"));
            String status = "Customer Paid";
            String remark = "0";
            Order order = new Order();
            //order.setId(orderID);
            order.setUserID(userID);
            order.setRoomID(roomID);
            order.setAmount(amount);
            order.setStatus(status);
            order.setRemark(remark);


            SimpleDateFormat fmd = new SimpleDateFormat("yyyy-MM-dd");
            Date startTime = fmd.parse(req.getParameter("sTime"));
            Date endTime = fmd.parse(req.getParameter("eTime"));
            order.setStart_time(startTime);
            order.setEnd_time(endTime);
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            List<Order> orderList = manager.order_find_all();
            orderID = orderList.size() +1;
            order.setId(orderID);

            manager.order_create(order);
            System.out.println(order.toString());
            req.getRequestDispatcher("/jsp/AddOrderRecordSuccess.jsp").forward(req, resp);
            //Order order1 = manager.order_find_by_ID(orderID);
            //req.setAttribute("order1", order1);
//            if(order1 != null){
//                System.out.println(order);
//                req.setAttribute("order1", order1);
//
//                req.getRequestDispatcher("AddOrderRecordSuccess.jsp").forward(req, resp);
//            }else {
//                System.out.println("添加失败");
//
//                req.getRequestDispatcher("AddOrderRecordError.jsp").forward(req, resp);
//
//            }

        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("AddOrderRecordError.jsp").forward(req, resp);

        }


    }
}
