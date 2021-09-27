package Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import beans.Hotel;
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
	}