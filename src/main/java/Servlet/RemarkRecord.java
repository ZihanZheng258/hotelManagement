package Servlet;

import Dao.DaoManager;
import beans.Remark;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class RemarkRecord extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int roomID = Integer.parseInt(req.getParameter("roomID"));


        Remark remark = new Remark();
        remark.setRoomID(roomID);
        session.setAttribute("remark", remark);

        try {
            req.getRequestDispatcher("/jsp/AddOrderRecord.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("AddRemarkRecordError.jsp").forward(req, resp);
        }
    }
}
