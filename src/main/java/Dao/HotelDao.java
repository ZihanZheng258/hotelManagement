package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import beans.Hotel;
import factory.BeanFactory;
import factory.HotelFactory;

public class HotelDao implements BaseDao<Hotel>{
	private PreparedStatement ps;
	private Connection conn;
	private HotelFactory beanfactory = new HotelFactory();
	
	public HotelDao(Connection conn) {
		this.conn = conn;
		
	}
	@Override
	public boolean doCreate(Hotel beanObject) throws Exception {
        ps = conn.prepareStatement("INSERT INTO `hotel`.`t_hotel`(`id`, `name`, `address`, `type`, `area`, `star`, `score`, `introduction`, `picture_id`) "
        		+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);");

	        ps.setObject(1,beanObject.getId());
	        ps.setObject(2,beanObject.getName());
	        ps.setObject(3,beanObject.getAddress());
	        ps.setObject(4,beanObject.getType());
	        ps.setObject(5,beanObject.getArea());
	        ps.setObject(6,beanObject.getStar());
	        ps.setObject(7,beanObject.getScore());
	        ps.setObject(8,beanObject.getIntroduction());
	        ps.setObject(9,10000);
	        System.out.print(ps.executeUpdate());
	        
		return false;
	}

	@Override
	public boolean doUpdate(Hotel beanObject) throws Exception {
		ps = conn.prepareStatement("UPDATE `hotel`.`t_hotel` SET `name` = ?, `address` = ?, `type` = ?,"
				+ " `area` = ?, `star` = ?, `score` = ?, "
				+ "`introduction` = ?, `picture_id` = ? WHERE `id` = ?");
		ps.setObject(1,beanObject.getName());
		ps.setObject(2,beanObject.getAddress());
		ps.setObject(3,beanObject.getType());
		ps.setObject(4,beanObject.getArea());
		ps.setObject(5,beanObject.getStar());
		ps.setObject(6,beanObject.getScore());
		ps.setObject(7,beanObject.getIntroduction());
		ps.setObject(8,10000);
		ps.setObject(9,beanObject.getId());
		System.out.print(ps.executeUpdate());
		return false;
	}

	@Override
	public boolean doRemoveBatch(int...ids) throws Exception {
        ps = conn.prepareStatement("DELETE FROM t_hotel WHERE t_hotel.id = ?;");
		for(int id : ids) {
	        ps.setObject(1, String.valueOf(id));
	        System.out.print(ps.executeUpdate());
	        
        }
		return false;
	}

	@Override
	public Hotel findById(Integer id) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_hotel WHERE t_hotel.id = ?;");
		ps.setObject(1, String.valueOf(id));
		ResultSet result = ps.executeQuery();
		result.next();
	    Hotel hotel	= beanfactory.generateBeaninstance(result);
		System.out.print(hotel.toString());
		return hotel;
	}
	
	public List<Hotel> findByAddress(String address) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_hotel WHERE t_hotel.address = ?;");
		ps.setObject(1, address);
		List<Hotel> hotels = new ArrayList<Hotel>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
               hotels.add(beanfactory.generateBeaninstance(rs));
            }
            }
		return hotels;
	}
	public List<Hotel> findByType(String type) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_hotel WHERE t_hotel.type = ?;");
		ps.setObject(1, type);
		List<Hotel> hotels = new ArrayList<Hotel>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
               hotels.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(hotels.toString());
		return hotels;
	}
	public List<Hotel> findByTypeAndAddress (String address,String type) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_hotel WHERE t_hotel.address = ? AND t_hotel.type = ?;");
		ps.setObject(1, address);
		ps.setObject(2, type);
		List<Hotel> hotels = new ArrayList<Hotel>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
               hotels.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(hotels.toString());
		return hotels;
	}

	public List<Hotel> findByName (String name) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_hotel WHERE t_hotel.name LIKE concat('%',?,'%')");
		ps.setObject(1, name);
		List<Hotel> hotels = new ArrayList<Hotel>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
               hotels.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(hotels.toString());
		return hotels;
	}

	@Override
	public List<Hotel> findAll() throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_hotel;");
		List<Hotel> hotels = new ArrayList<Hotel>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
               hotels.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(hotels.toString());
		return hotels;
	}
    
}
