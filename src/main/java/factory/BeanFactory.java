package factory;

import java.sql.ResultSet;
import java.sql.SQLException;
// basic factory interface that used to grenerate bean instance, it use genericity to make sure
//every factory implement it can provide different instance use same method.
public interface BeanFactory<T> {
   
	public T generateBeaninstance(ResultSet resutleset) throws SQLException;
}
