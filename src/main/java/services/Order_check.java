package services;

import beans.Order;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Order_check {
    public static Order order(int id) throws ParseException {
        Order order = new Order();
        order.setId(id);
        order.setUserID(100000);
        order.setRoomID(100000);
        order.setAmount(10000);
        order.setStatus("Using");
        order.setRemark("Good");
        SimpleDateFormat fmd = new SimpleDateFormat("yyyy-MM-dd");
        String startTime = "2021-09-28";
        String endTime = "2021-10-29";
        Date sTime = fmd.parse(startTime);
        Date eTime = fmd.parse(endTime);
        order.setStart_time(sTime);
        order.setEnd_time(eTime);

        if(order.getId() == 100000){
            return order;
        }
        return  order;

    }
}
