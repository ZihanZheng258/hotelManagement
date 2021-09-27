package Dao;

import java.sql.SQLException;
import java.util.Set;
import java.util.TreeSet;

import beans.Hotel;
import dbc.DBConnector;

public class Test {

	public static void main(String[] args) throws Exception  
	{
       DBConnector connector = new DBConnector();
       DaoManager manager = new DaoManager(connector.openConnection());
       Hotel hotel = manager.hotel_find_by_ID(10000);
       hotel.setType("test_success");
       manager.hotel_update(hotel);
       System.out.print(manager.hotel_find_by_name("am"));
       
	}

}
