package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import beans.Hotel;
import beans.User;
import factory.BeanFactory;
import factory.RoomFactory;
import factory.UserFactory;
import services.Encryption_Services;
public class UserDao implements BaseDao<User>{
	private PreparedStatement ps;
	private Connection conn;
	private UserFactory beanfactory = new UserFactory();
	public UserDao(Connection conn) {
		this.conn = conn;
	}
	@Override
	public boolean doCreate(User beanObject) throws Exception {
        ps = conn.prepareStatement("INSERT INTO `t_user`(`id`, `name`, `password`, `type`, "
        		+ "`phone_number`, `picture_id`, `balance`, `pay_pwd`) "
        		+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?);");

	        ps.setObject(1,beanObject.getID());
	        ps.setObject(2,beanObject.getName());
	        ps.setObject(3,beanObject.getPassword());
	        ps.setObject(4,beanObject.getType());
	        ps.setObject(5,beanObject.getPhoneNumber());
	        ps.setObject(6,10000);
	        ps.setObject(7,beanObject.getBalance());
	        ps.setObject(8,beanObject.getPayPassword());
	        System.out.print(ps.executeUpdate());
	        return false;
	}

	@Override
	public boolean doUpdate(User beanObject) throws Exception {
		ps = conn.prepareStatement("UPDATE `hotel`.`t_user` SET `name` = ?, `password` = ?, "
				+ "`type` = ?, `phone_number` = ?, "
				+ "`picture_id` = ?, `balance` = ?, `pay_pwd` = ? WHERE `id` = ?;");
        
        ps.setObject(1,beanObject.getName());
        ps.setObject(2,beanObject.getPassword());
        ps.setObject(3,beanObject.getType());
        ps.setObject(4,beanObject.getPhoneNumber());
        ps.setObject(5,10000);
        ps.setObject(6,beanObject.getBalance());
        ps.setObject(7,beanObject.getPayPassword());
        ps.setObject(8,beanObject.getID());
		return false;
	}

	public boolean doUpdate_password(int ID, String password) throws Exception {
		ps = conn.prepareStatement("UPDATE t_user SET `password` = ? WHERE `id` = ?;");

        ps.setObject(1,password);
        ps.setObject(2,ID);
        ps.executeUpdate();
		return true;
	}
	@Override
	public boolean doRemoveBatch(int...ids) throws Exception {
        ps = conn.prepareStatement("DELETE FROM t_user WHERE t_user.id = ?;");
		for(int id : ids) {
	        ps.setObject(1, String.valueOf(id));
	        System.out.print(ps.executeUpdate());
	        
        }
		return false;
	}

	@Override
	public User findById(Integer id) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_user WHERE t_user.id = ?;");
		ps.setObject(1, String.valueOf(id));
		ResultSet result = ps.executeQuery();
		result.next();
	    User user = beanfactory.generateBeaninstance(result);
		System.out.print(user.toString());
		return user;
	}
	
	public User findForLogin(Integer id,String password) throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_user WHERE t_user.id = ? And t_user.password = ?;");
		ps.setObject(1, String.valueOf(id));
		ps.setObject(2, password);
		ResultSet result = ps.executeQuery();
		result.next();
	    User user = beanfactory.generateBeaninstance(result);
		System.out.print(user.toString());
		return user;
	}

	
	@Override
	public List<User> findAll() throws Exception {
		ps = conn.prepareStatement("SELECT * FROM t_user;");
		List<User> users = new ArrayList<User>();
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
            	users.add(beanfactory.generateBeaninstance(rs));
            }
            }
        System.out.print(users.toString());
		return users;
	}
}
