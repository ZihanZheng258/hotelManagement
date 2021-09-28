package Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import beans.Hotel;
import beans.Order;
import beans.Room;
import beans.User;
public class DaoManager {
	private Connection conn;
	private HotelDao hotelDao;
	private UserDao userDao;
	private RoomDao roomDao;
	private OrderDao orderDao;
	public DaoManager(Connection conn) throws SQLException {       
		   this.conn = conn;
		   hotelDao = new HotelDao(conn);
		   userDao = new UserDao(conn);
		   roomDao = new RoomDao(conn);
		   orderDao = new OrderDao(conn);
		   
		   
		}
	
	// hotel related Dao
	public boolean hotel_delete(int...IDs) throws Exception {
		return hotelDao.doRemoveBatch(IDs);
	}
	public Hotel hotel_find_by_ID(int ID)throws Exception{
		return hotelDao.findById(ID);
	}
	public List<Hotel> hotel_find_all() throws Exception {
		return hotelDao.findAll();
	}
	public List<Hotel> hotel_find_by_address(String address)throws Exception{
		return hotelDao.findByAddress(address);
	}
	public List<Hotel> hotel_find_by_type(String type)throws Exception{
		return hotelDao.findByType(type);
	}
	public List<Hotel> hotel_find_by_type_and_address(String type,String address)throws Exception{
		return hotelDao.findByTypeAndAddress(address, type);
	}
	public List<Hotel> hotel_find_by_name(String name)throws Exception{
		return hotelDao.findByName(name);
	}
	public boolean hotel_create(Hotel hotel)throws Exception{
		return hotelDao.doCreate(hotel);
	}
	public boolean hotel_update(Hotel hotel)throws Exception{
		return hotelDao.doUpdate(hotel);
	}
	
	// Room related Dao
	public Room room_find_by_ID(int ID )throws Exception{
		return roomDao.findById(ID);
	}
	public boolean room_create(Room room) throws Exception{
		return roomDao.doCreate(room);
	}
	public boolean room_update(Room room)throws Exception{
		return roomDao.doUpdate(room);
	}
	public boolean room_delete(int... IDs)throws Exception{
		return roomDao.doRemoveBatch(IDs);
	}
	public List<Room> room_find_all(int ID)throws Exception{
		return roomDao.findAll();
	}
	public List<Room> room_find_by_hotel_ID(int ID )throws Exception{
		return roomDao.findByHotelId(ID);
	}
	// User related Dao
	
	public User user_find_by_ID(int ID)throws Exception{
		return userDao.findById(ID);
	}
	public boolean user_create(User user) throws Exception{
		return userDao.doCreate(user);
	}
	public boolean user_update(User user)throws Exception{
		return userDao.doUpdate(user);
	}
	public boolean user_delect(int... IDs)throws Exception{
		return userDao.doRemoveBatch(IDs);
	}
	public boolean user_update_password(int ID, String password) throws Exception{
		return userDao.doUpdate_password(ID, password);
	}
	public User user_find_for_login(int ID, String password) throws Exception{
		return userDao.findForLogin(ID, password);
	}
	public List<User> user_find_all() throws Exception{
		return userDao.findAll();
	}
	
	
	// Order related Dao
	public Order order_find_by_ID(int ID)throws Exception{
		return orderDao.findById(ID);
	}
	public List<Order> order_find_by_userID(int ID )throws Exception{
		return orderDao.findByUserID(ID);
	}
	public List<Order> order_find_by_userID_And_Status(int ID, String status )throws Exception{
		return orderDao.findByUserIDAndStatus(ID, status);
	}
	public List<Order> order_find_all()throws Exception{
		return orderDao.findAll();
	}
	public boolean order_create(Order order) throws Exception{
		return orderDao.doCreate(order);
	}
	public boolean order_delete(int... IDs)throws Exception{
		return orderDao.doRemoveBatch(IDs);
	}
	public boolean order_update(Order order)throws Exception{
		return orderDao.doUpdate(order);
	}
	}