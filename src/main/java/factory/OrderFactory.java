package factory;

import java.sql.ResultSet;
import java.sql.SQLException;

import beans.Order;

public class OrderFactory implements BeanFactory<Order>{
	// generate order instance from current node of Iterator resultset
	@Override
	public Order generateBeaninstance(ResultSet resutleset) throws SQLException {
		Order order = new Order();
		order.setId(resutleset.getInt("id"));
		order.setUserID(resutleset.getInt("user_id"));
		order.setRoomID(resutleset.getInt("room_id"));
		order.setStart_time(resutleset.getDate("start_time"));
		order.setEnd_time(resutleset.getDate("end_time"));
		order.setAmount(resutleset.getDouble("amount"));
		order.setRemark(resutleset.getString("remark"));
        order.setStatus(resutleset.getString("status"));
		return order;
	}

}
