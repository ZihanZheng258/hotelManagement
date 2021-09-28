package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Hotel;
import beans.Order;
import beans.Room;
import factory.BeanFactory;
import factory.HotelFactory;
import factory.OrderFactory;


public class OrderDao implements BaseDao<Order>{
	private PreparedStatement ps;
	private Connection conn;
	private OrderFactory beanfactory = new OrderFactory();
	
	public OrderDao(Connection conn) {
		this.conn = conn;
	}
	@Override
	public boolean doCreate(Order beanObject) throws Exception {
		ps = conn.prepareStatement("INSERT INTO `hotel`.`t_order`(`id`, `user_id`, `room_id`, "
				+ "`start_time`, `end_time`, `amount`, `remark`, `status`)"
				+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?);");
		ps.setObject(1,beanObject.getId());
		ps.setObject(2,beanObject.getUserID());
		ps.setObject(3,beanObject.getRoomID());
		ps.setObject(4,beanObject.getStart_time());
		ps.setObject(5,beanObject.getEnd_time());
		ps.setObject(6,beanObject.getAmount());
		ps.setObject(7,beanObject.getRemark());
		ps.setObject(8,beanObject.getStatus());
		System.out.print(ps.executeUpdate());
		return false;
	}
	@Override
	public boolean doUpdate(Order beanObject) throws Exception {
		ps = conn.prepareStatement("UPDATE `hotel`.`t_order` SET `user_id` = ?, `room_id` = ?,"
				+ " `start_time` ="
				+ " ?, `end_time` = ?, `amount` = ?, `remark` = ?, "
				+ "`status` = ? WHERE `id` = ?;");
		
		ps.setObject(1,beanObject.getUserID());
		ps.setObject(2,beanObject.getRoomID());
		ps.setObject(3,beanObject.getStart_time());
		ps.setObject(4,beanObject.getEnd_time());
		ps.setObject(5,beanObject.getAmount());
		ps.setObject(6,beanObject.getRemark());
		ps.setObject(7,beanObject.getStatus());
		ps.setObject(8,beanObject.getId());
		System.out.print(ps.executeUpdate());
		return false;
	}
	@Override
	public boolean doRemoveBatch(int...ids) throws Exception {
        ps = conn.prepareStatement("DELETE FROM t_order WHERE t_order.id = ?;");
		for(int id : ids) {
	        ps.setObject(1, String.valueOf(id));
	        System.out.print(ps.executeUpdate());
	        
        }
		return false;
	}
	@Override
	public Order findById(Integer id) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_order WHERE t_order.id = ?;");
		ps.setObject(1, String.valueOf(id));
		ResultSet result = ps.executeQuery();
		result.next();
	    Order order = beanfactory.generateBeaninstance(result);
		System.out.print(order.toString());
		return order;
	}
	public List<Order> findByUserID(Integer id) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_order WHERE t_order.user_id = ?;");
		ps.setObject(1, String.valueOf(id));
		List<Order> orders = new ArrayList<Order>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	orders.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(orders.toString());
		return orders;
	}
	public List<Order> findByUserIDAndStatus(Integer id,String status) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_order WHERE t_order.user_id = ? And t_order.status = ?;");
		ps.setObject(1, String.valueOf(id));
		ps.setObject(2, status);
		List<Order> orders = new ArrayList<Order>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	orders.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(orders.toString());
		return orders;
	}
	
	@Override
	public List<Order> findAll() throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_order;");
		List<Order> orders = new ArrayList<Order>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	orders.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(orders.toString());
		return orders;
	}
	}
	