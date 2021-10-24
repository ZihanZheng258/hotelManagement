package Servlet;

import beans.Remark;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import Dao.DaoManager;
import dbc.DBConnector;

public class AddRemarkRecordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String content = req.getParameter("content");
        int remarkID = Integer.parseInt(req.getParameter("remarkID"));
        int score = Integer.parseInt(req.getParameter("score"));
        int roomID = Integer.parseInt(req.getParameter("roomID"));
        int userID = Integer.parseInt(req.getParameter("userID"));

        Remark remark = new Remark();
        remark.setUserName(userName);
        remark.setContent(content);
        remark.setId(remarkID);
        remark.setScore(score);
        remark.setRoomID(roomID);
        remark.setUserID(userID);

        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            manager.Remark_Create(remark);
            Remark remark1 = manager.Remark_find_by_id(remarkID);
            if(remark1 != null){
                System.out.println(remark);
                req.setAttribute("remark1", remark1);
                req.getRequestDispatcher("AddRemarkRecordSuccess.jsp").forward(req, resp);
            }else {
                System.out.println("添加失败");
                req.getRequestDispatcher("AddRemarkRecordError.jsp").forward(req, resp);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            req.getRequestDispatcher("AddRemarkRecordError.jsp").forward(req, resp);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            req.getRequestDispatcher("AddRemarkRecordError.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("AddRemarkRecordError.jsp").forward(req, resp);
        }
    }
}
