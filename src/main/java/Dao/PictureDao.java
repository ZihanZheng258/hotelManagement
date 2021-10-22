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
import factory.BeanFactory;
import factory.HotelFactory;
import factory.RoomFactory;
import factory.PictureFactory;
import factory.*;

public class PictureDao implements BaseDao<Picture>{
	private PreparedStatement ps;
	private Connection conn;
	private PictureFactory beanfactory = new PictureFactory();
	
	public PictureDao(Connection conn) {
		this.conn = conn;
	}
	
	@Override
	public boolean doCreate(Picture beanObject) throws Exception {
		ps = conn.prepareStatement("INSERT INTO `hotel`.`t_pictrue`(`id`, `pictrue_path`) VALUES (?, ?);");
        ps.setObject(1,beanObject.getId());
        ps.setObject(2,beanObject.getPictrue());
        System.out.print(ps.executeUpdate());
		return false;
	}

	@Override
	public boolean doUpdate(Picture beanObject) throws Exception {
		return false;
	}

	@Override
	public boolean doRemoveBatch(int... ids) throws Exception {
		return false;
	}

	@Override
	public Picture findById(Integer id) throws Exception {
		ps = conn.prepareStatement("Select * FROM t_pictrue WHERE t_pictrue.id = ?;");
		ps.setObject(1, id);
		ResultSet result = ps.executeQuery();
		result.next();
		Picture picture = beanfactory.generateBeaninstance(result);
		System.out.print(picture);
		return picture;
	}

	@Override
	public List<Picture> findAll() throws Exception {

		return null;
	}
   
}
