package factory;

import java.sql.ResultSet;
import java.sql.SQLException;

import beans.User;

public class UserFactory implements BeanFactory<User> {
	// generate user instance from current node of Iterator resultset
	@Override
	public User generateBeaninstance(ResultSet resutleset) throws SQLException {
		User user = new User();
		user.setID(resutleset.getInt("id"));
		user.setName(resutleset.getString("name"));
		user.setPassword(resutleset.getString("password"));
		user.setType(resutleset.getString("type"));
		user.setPhoneNumber(resutleset.getString("phone_number"));
		user.setPicture(resutleset.getInt("picture_id"));
		user.setBalance(resutleset.getDouble("balance"));
		user.setPayPassword(resutleset.getString("pay_pwd"));
		return user;
	}

}
