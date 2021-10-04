package dbc;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBConnector extends DB{
	public DBConnector() throws ClassNotFoundException, SQLException {


		Class.forName(driver);
        // use reflection to test is the driver in classpath
		conn = DriverManager.getConnection(URL, dbuser, dbpass);

		}

		 

		public Connection openConnection(){

		return this.conn;

		}

		 

		public void closeConnection() throws SQLException {

		this.conn.close();

		}
	}
