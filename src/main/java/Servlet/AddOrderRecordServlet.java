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
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class AddOrderRecordServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int roomID = Integer.parseInt(req.getParameter("roomID"));
        System.out.println("add roomID success");
        PrintWriter error = resp.getWriter();
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
            int index = 1;
            boolean end = false;
            while(!end){
                try {
                    manager.order_find_by_ID(index);
                    index++;
                }catch (Exception e){
                    order.setId(index);
                    System.out.println("OrderID: " + index);
                    end = true;
                }
            }


            manager.order_create(order);
            System.out.println(order.toString());
            req.getRequestDispatcher("/jsp/AddOrderRecordSuccess.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();


        }
        error.println("<script language='javascript'>alert('Something is WRONG!! Please try again')</script>");
        error.println("<script language='javascript'>window.location.href='/hotelManagement_war/jsp/AddOrderRecord.jsp'</script>");


    }
}
