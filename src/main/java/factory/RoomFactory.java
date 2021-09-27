package factory;

import java.sql.ResultSet;
import java.sql.SQLException;

import beans.Room;

public class RoomFactory implements BeanFactory<Room>{

	@Override
	public Room generateBeaninstance(ResultSet resutleset) throws SQLException {
		Room room = new Room();
		room.setId(resutleset.getInt("id"));
		room.setName(resutleset.getString("name"));
		room.setNumber(resutleset.getInt("number"));
		room.setpicture(resutleset.getInt("picture_id"));
		room.setType(resutleset.getString("type"));
		room.setArea(resutleset.getDouble("area"));
		room.setBedWidth(resutleset.getDouble("bed_width"));
		room.setPrice(resutleset.getDouble("price"));
		room.setScore(resutleset.getInt("score"));
		room.setRemark(resutleset.getString("remark"));
		room.setHotelID(resutleset.getInt("hotel_id"));
		room.setBookStatus(resutleset.getString("status"));
		room.setLevel(resutleset.getInt("level"));
		return room;
	}

}
