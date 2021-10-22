package Dao;

import java.sql.SQLException;
import java.util.Set;
import java.util.TreeSet;

import beans.Hotel;
import beans.Order;
import beans.Picture;
import beans.Remark;
import beans.Room;
import beans.User;
import dbc.DBConnector;

public class Test {
    // test for the connection of database
	public static void main(String[] args) throws Exception  
	{
       DBConnector connector = new DBConnector();
       DaoManager manager = new DaoManager(connector.openConnection());
       Remark remark = manager.Remark_find_by_id(20);
       remark.setId(30);
       remark.setRoomID(30);
       manager.Remark_Create(remark);
       System.out.println(manager.Remark_find_by_roomID(30));
       System.out.println(manager.Remark_find_by_UserID(10));
	}

}
