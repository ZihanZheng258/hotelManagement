package factory;

import beans.Hotel;
import beans.Picture;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PictureFactory implements BeanFactory<Picture>{
	@Override
	public Picture generateBeaninstance(ResultSet resutleset) throws SQLException {
		// TODO Auto-generated method stub
         Picture picture = new Picture();
         picture.setId(resutleset.getInt("id"));
         picture.setPictrue(resutleset.getString("pictrue_path"));
         return picture;
	}
}



