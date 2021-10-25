package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;

@MultipartConfig
public class HotelPictureUpload extends HttpServlet {

//    String path;

    protected void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = resp.getWriter()) {
            Part part = req.getPart("file");
            String filename = part.getSubmittedFileName();

            String path = getServletContext().getRealPath("/" + "image" + File.separator + filename);
            req.getSession().setAttribute("HPName", filename);
            InputStream is = part.getInputStream();

            boolean success = uploadFile(is, path);
            if (success) {
                out.println(path);
            } else {
                out.println("error");
            }
        }
    }


    public boolean uploadFile(InputStream is, String path) {
        boolean test = false;
        try{
            byte[] byt = new byte[is.available()];
            is.read(byt);
            OutputStream fops = new FileOutputStream(path);
            fops.write(byt);
            fops.flush();
            fops.close();

            test = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return test;
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
}