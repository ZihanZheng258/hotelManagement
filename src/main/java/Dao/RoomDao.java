package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Order;
import beans.Room;
import beans.User;
import factory.BeanFactory;
import factory.HotelFactory;
import factory.RoomFactory;
import factory.*;


public class RoomDao implements BaseDao<Room>{
	private PreparedStatement ps;
	private Connection conn;
	private RoomFactory beanfactory = new RoomFactory();
	
	public RoomDao(Connection conn) {
		this.conn = conn;
	}
	@Override
	public boolean doCreate(Room beanObject) throws Exception {
        ps = conn.prepareStatement("INSERT INTO `hotel`.`t_room`(`id`, `name`, `number`, "
        		+ "`picture_id`, `type`, `area`, "
        		+ "`bed_width`, `price`, `score`, `remark`, `hotel_id`, `status`, `level`) "
        		+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

	        ps.setObject(1,beanObject.getId());
	        ps.setObject(2,beanObject.getName());
	        ps.setObject(3,beanObject.getNumber());
	        ps.setObject(4,10000);
	        ps.setObject(5,beanObject.getType());
	        ps.setObject(6,beanObject.getArea());
	        ps.setObject(7,beanObject.getBedWidth());
	        ps.setObject(8,beanObject.getPrice());
	        ps.setObject(9,beanObject.getScore());
	        ps.setObject(10,beanObject.getRemark());
	        ps.setObject(11,beanObject.getHotelID());
	        ps.setObject(12,beanObject.getBookStatus());
	        ps.setObject(13,beanObject.getLevel());
	        System.out.print(ps.executeUpdate());
		
		return false;
	}
	@Override
	public boolean doUpdate(Room beanObject) throws Exception {
		
		ps = conn.prepareStatement("UPDATE `hotel`.`t_room` SET `name` = ?, `number` = ?, `picture_id` = ?, "
				+ "`type` = ?, `area` = ?, `bed_width` = ?, `price` = ?, `score` = ?, `remark` = ?, "
				+ "`hotel_id` = ?, `status` = ?, `level` = ? WHERE `id` = ?;");
        
        ps.setObject(1,beanObject.getName());
        ps.setObject(2,beanObject.getNumber());
        ps.setObject(3,10000);
        ps.setObject(4,beanObject.getType());
        ps.setObject(5,beanObject.getArea());
        ps.setObject(6,beanObject.getBedWidth());
        ps.setObject(7,beanObject.getPrice());
        ps.setObject(8,beanObject.getScore());
        ps.setObject(9,beanObject.getRemark());
        ps.setObject(10,beanObject.getHotelID());
        ps.setObject(11,beanObject.getBookStatus());
        ps.setObject(12,beanObject.getLevel());
        ps.setObject(13,beanObject.getId());
        System.out.print(ps.executeUpdate());

		return false;
	}
	@Override
	public boolean doRemoveBatch(int...ids) throws Exception {
        ps = conn.prepareStatement("DELETE FROM t_room WHERE t_room.id = ?;");
		for(int id : ids) {
	        ps.setObject(1, String.valueOf(id));
	        System.out.print(ps.executeUpdate());
	        
        }
		return false;
	}
	@Override
	public Room findById(Integer id) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_room WHERE t_room.id = ?;");
		ps.setObject(1, String.valueOf(id));
		ResultSet result = ps.executeQuery();
		result.next();
	    Room room = beanfactory.generateBeaninstance(result);
		System.out.print(room.toString());
		return room;
	}
	
	
	public List<Room> findByHotelId(Integer id) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_room WHERE t_room.hotel_id = ?;");
		ps.setObject(1, String.valueOf(id));
		List<Room> rooms = new ArrayList<Room>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	rooms.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(rooms.toString());
		return rooms;
	}
	@Override
	public List<Room> findAll() throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_room;");
		List<Room> rooms = new ArrayList<Room>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	rooms.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(rooms.toString());
		return rooms;
	}
}