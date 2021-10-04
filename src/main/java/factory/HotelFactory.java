package factory;

import java.sql.ResultSet;
import java.sql.SQLException;

import beans.Hotel;

public class HotelFactory implements BeanFactory<Hotel>{
    // generate hotel instance from current node of Iterator resultset
	@Override
	public Hotel generateBeaninstance(ResultSet resutleset) throws SQLException {
		// TODO Auto-generated method stub
		Hotel hotel = new Hotel();
        hotel.setId(resutleset.getInt("id"));
        hotel.setName(resutleset.getString("name"));
        hotel.setAddress(resutleset.getString("address"));
        hotel.setType(resutleset.getString("type"));
        hotel.setArea(resutleset.getDouble("area"));
        hotel.setStar(resutleset.getInt("star"));
        hotel.setScore(resutleset.getInt("score"));
        hotel.setIntroduction(resutleset.getString("introduction"));
        hotel.setpicture(resutleset.getInt("picture_id"));
		return hotel;
	}

}
