package Dao;


import java.util.*;

public interface BaseDao <T>{

	public boolean doCreate(T beanObject) throws Exception;

	public boolean doUpdate(T beanObject) throws Exception;

	public boolean doRemoveBatch( int... ids) throws Exception;

	public T findById(Integer id) throws Exception; 

	public List<T> findAll() throws Exception;
}