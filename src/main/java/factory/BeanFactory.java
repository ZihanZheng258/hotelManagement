package factory;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface BeanFactory<T> {
   
	public T generateBeaninstance(ResultSet resutleset) throws SQLException;
}
