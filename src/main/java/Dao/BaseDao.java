package Dao;


import java.util.*;
// basic dao interface and it need to be implement by all dao class, use genericity to make the interface
//is suitable for all kind of entitys in this system.
public interface BaseDao <T>{

	public boolean doCreate(T beanObject) throws Exception;

	public boolean doUpdate(T beanObject) throws Exception;

	public boolean doRemoveBatch( int... ids) throws Exception;

	public T findById(Integer id) throws Exception; 

	public List<T> findAll() throws Exception;
}