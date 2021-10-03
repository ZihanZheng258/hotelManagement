package Servlet;

import Dao.DaoManager;
import beans.Hotel;
import beans.Order;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class ShowOrderRecordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = req.getSession();
            List<Order> orderList= manager.order_find_all();
            System.out.println(orderList.toString());

            //将list数据打包

            session.setAttribute("orderList", orderList);
            //req.setAttribute("hotelList", hotelList);
            //转发
            req.getRequestDispatcher("/jsp/OrderRecord.jsp").forward(req, resp);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
