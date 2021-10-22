package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Order;
import beans.Room;
import beans.User;
import beans.Picture;
import beans.Remark;
import factory.BeanFactory;
import factory.HotelFactory;
import factory.RoomFactory;
import factory.PictureFactory;
import factory.*;
public class RemarkDao implements BaseDao<Remark>{

	private PreparedStatement ps;
	private Connection conn;
	private RemarkFactory beanfactory = new RemarkFactory();
	public RemarkDao(Connection conn) {
		this.conn = conn;
	}
	@Override

	public boolean doCreate(Remark beanObject) throws Exception {
		 ps = conn.prepareStatement("INSERT INTO `hotel`.`t_remark`(`id`, `user_name`, `content`, `score`,"
		 		+ " `roomID`, `user_id`) VALUES (?, ?, ?, ?, ?, ?);");
		 ps.setObject(1, beanObject.getId());
		 ps.setObject(2, beanObject.getUserName());
		 ps.setObject(3, beanObject.getContent());
		 ps.setObject(4, beanObject.getScore());
		 ps.setObject(5, beanObject.getRoomID());
		 ps.setObject(6, beanObject.getUserID());
		 System.out.print(ps.executeUpdate());
		return false;
	}

	@Override
	public boolean doUpdate(Remark beanObject) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doRemoveBatch(int... ids) throws Exception {
        ps = conn.prepareStatement("DELETE FROM t_remark WHERE t_remark.id = ?;");
		for(int id : ids) {
	        ps.setObject(1, String.valueOf(id));
	        System.out.print(ps.executeUpdate());
	        
        }
		return false;
	}

	@Override
	public Remark findById(Integer id) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_remark WHERE t_remark.id = ?;");
		ps.setObject(1, String.valueOf(id));
		ResultSet result = ps.executeQuery();
		result.next();
	    Remark remark = beanfactory.generateBeaninstance(result);
		System.out.print(remark.toString());
		return remark;
	}

	@Override
	public List<Remark> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<Remark> findByRoomId(Integer id) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_remark WHERE t_remark.roomID = ?;");
		ps.setObject(1, String.valueOf(id));
		List<Remark> remarks = new ArrayList<Remark>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	remarks.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(remarks.toString());
		return remarks;
	}
	public List<Remark> findByUserId(Integer id) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_remark WHERE t_remark.user_id = ?;");
		ps.setObject(1, String.valueOf(id));
		List<Remark> remarks = new ArrayList<Remark>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	remarks.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(remarks.toString());
		return remarks;
	}
}
