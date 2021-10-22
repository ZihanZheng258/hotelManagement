package factory;

import beans.Hotel;
import beans.Picture;
import beans.Remark;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RemarkFactory implements BeanFactory<Remark>{
	@Override
	public Remark generateBeaninstance(ResultSet resutleset) throws SQLException {
		// TODO Auto-generated method stub
         Remark remark = new Remark();
         remark.setId(resutleset.getInt("id"));
         remark.setUserName(resutleset.getString("user_name"));
         remark.setRoomID(resutleset.getInt("roomID"));
         remark.setContent(resutleset.getString("content"));
         remark.setScore(resutleset.getInt("score"));
         remark.setUserID(resutleset.getInt("user_id"));
         return remark;
	}
}
