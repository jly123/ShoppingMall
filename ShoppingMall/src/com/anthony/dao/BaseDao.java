package com.anthony.dao;
import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.anthony.Javabean.*;
import com.anthony.Javabean.user;
import com.anthony.util.DBUtil;


public class BaseDao {
	
	
	/*
	 * 查询出总共有多少记录
	 */
	public int BaseDaoPageCount(String sql, Object[] parameters) {
		
		int rowCount = 0 ;
		
		Connection connection = DBUtil.getConnection();
		PreparedStatement stmt;
		ResultSet rs;
		
		try {
			stmt = connection.prepareStatement(sql);
			
			if(parameters!=null && parameters.length>0){
				
				for(int i=0;i<parameters.length;i++){
					
					stmt.setObject(i + 1, parameters[i]);
					
				}
			}
			
			rs = stmt.executeQuery();
			
			if(rs.next()){
				 rowCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rowCount ;
	}
	
	/*
	 * 查询
	 */
	public ArrayList<Object> BaseDaoGoodsPage(Class<?> clazz ,String sql, Object[] parameters) {
		ArrayList<Object> list = new ArrayList<Object>();
		
		Connection connection = DBUtil.getConnection();
		PreparedStatement stmt;
		ResultSet rs;
		
		try {
			stmt = connection.prepareStatement(sql);
			
				if(parameters!=null && parameters.length>0){
					
					for(int i=0;i<parameters.length;i++){
						
						stmt.setObject(i + 1, parameters[i]);
						
					}
				}
				
			rs = stmt.executeQuery();
			while (rs.next()) {
				Object obj = this.loadData(clazz, rs);
				list.add(obj);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	
	/**
	 * 
	 * @param clazz
	 * @return ArrayList<Object>
	 */
	public ArrayList<Object> getAll(Class<?> clazz) {
		ArrayList<Object> list = new ArrayList<Object>();
		
		String tablename = this.getTableName(clazz);

		Connection connection = DBUtil.getConnection();
		Statement stmt;
		ResultSet rs;
		String sql = "select * from [" + tablename + "];";

		try {
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Object obj = this.loadData(clazz, rs);
				list.add(obj);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	
	/**
	 * 
	 * @param clazz
	 * @param id
	 * @return 
	 */
	public Object getById(Class<?> clazz, Integer id) {
		Object obj = null;
		
		String tablename = this.getTableName(clazz);
		
		Connection connection = DBUtil.getConnection();
		PreparedStatement stmt;
		ResultSet rs;
		
		String sql = "select * from [" + tablename + "] where " + tablename
				+ "_id = ?;";
		
		try {
			stmt = connection.prepareStatement(sql);
			stmt.setObject(1, id);
			rs = stmt.executeQuery();
			if(rs.next()){
				obj = this.loadData(clazz, rs);
			}
			return obj;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return obj;
	}
	/**
	 * 
	 * @param clazz
	 * @param obj
	 */
	public void add(Class<?> clazz, Object obj){
		String tablename = this.getTableName(clazz);
		Connection connection = DBUtil.getConnection();
		PreparedStatement stmt;
		String sql = "insert into " + tablename + " values (";
		
		Field[] fields = clazz.getDeclaredFields();
		for(int i=1; i<fields.length;i++){
			sql += "?,";
		}
		sql += "?);";
		
		try {
			stmt = connection.prepareStatement(sql);
			for(int i=1; i<=fields.length;i++){
				Field f = fields[i-1];
				f.setAccessible(true);
				stmt.setObject(i, fields[i-1].get(obj));
			}
			stmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 
	 * @param clazz
	 * @param obj
	 */
	public void delete(Class<?> clazz, Object obj){
		String tablename = this.getTableName(clazz);
		Connection connection = DBUtil.getConnection();
		PreparedStatement stmt;
		
		String sql = "delete from " + tablename + " where " + tablename + "id = ?;";
		
		try {
			stmt = connection.prepareStatement(sql);
			Field idField = clazz.getDeclaredField(tablename + "id");
			idField.setAccessible(true);
			Object value = idField.get(obj);
			stmt.setObject(1, value);
			stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @param clazz
	 * @param obj
	 */
	public void update(Class<?> clazz, Object obj){
		String tablename = this.getTableName(clazz);
		Connection connection = DBUtil.getConnection();
		PreparedStatement stmt;
		
		String sql = "update " + tablename + " set ";
		
		Field[] fields = clazz.getDeclaredFields();
		for(Field f : fields){
			String fname = f.getName();
			sql += fname + "=?,";
		}
		sql = sql.substring(0,sql.length()-1);
		sql += " where " + tablename + "id=?;" ;
		System.out.println(sql);
		
		try {
			stmt = connection.prepareStatement(sql);
			
			for (int i = 0; i < fields.length; i++) {
				Field f = fields[i];
				f.setAccessible(true);
				Object value = f.get(obj);
				stmt.setObject(i+1, value);
			}
			
			Field idfield = clazz.getDeclaredField(tablename + "id");
			idfield.setAccessible(true);
			Object id = idfield.get(obj);
			stmt.setObject(fields.length+1, id);
			
			stmt.execute();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		}
	}
	
	
	
	/**
	 * 更新指定类型的指定对象
	 * @param clazz
	 * @param obj
	 */
	public void update(user users){
		Connection connection = DBUtil.getConnection();
		PreparedStatement stmt;
		String sql = "update [user] set user_phone = ? , user_QQ = ? where user_id= ? ";
		try {
			
			stmt = connection.prepareStatement(sql);
			stmt.setObject(1, users.getUser_phone());
			stmt.setObject(2, users.getUser_QQ());
			stmt.setObject(3, users.getUser_id());
			stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
	}
	
	

	/**
	 *
	 * @param clazz
	 * @return
	 */
	private String getTableName(Class<?> clazz) {
		return clazz.getName().substring(clazz.getName().lastIndexOf(".")+1)
				.toLowerCase();
	}
	/**
	 * 
	 * @param clazz
	 * @param rs
	 * @return
	 */
	private Object loadData(Class<?> clazz,ResultSet rs){
		Object obj = null;
		try {
			obj = clazz.newInstance();
			Field[] fields = clazz.getDeclaredFields();
			
			for (Field f : fields) {
				String fname = f.getName();
				Object value = rs.getObject(fname);
				f.setAccessible(true);
				f.set(obj, value);
			}
			
			return obj;
			
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return obj;
	}
	
	/*
	 * 
	 */
	public void addGood(Good good){
		Connection connection = DBUtil.getConnection();
		PreparedStatement stmt;
		String sql = "insert into good(good_name,good_image,good_description,good_price,good_place,good_date,user_id,type_id,school_id) values(?,?,?,?,?,getdate(),?,?,?)";
		try {
			stmt = connection.prepareStatement(sql);
			
			stmt.setObject(1, good.getGood_name());
			stmt.setObject(2, good.getGood_image());
			stmt.setObject(3, good.getGood_description());
			stmt.setObject(4, good.getGood_price());
			stmt.setObject(5, good.getGood_place());
			stmt.setObject(6, good.getUser_id());
			stmt.setObject(7, good.getType_id());
			stmt.setObject(8, good.getSchool_id());
			
			stmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} 
	}
	//插入school
		public void  saveschool(School school){
			
			PreparedStatement pre=null;
			Connection connection = DBUtil.getConnection();
			
			try {
				pre=connection.prepareStatement("insert into school(school_name,province_id) values(?,?)");
				pre.setString(1,school.getSchool_name());
				pre.setInt(2,school.getProvince_id());
				pre.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					pre.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		//插入user
		public void  saveuser(user user){
			PreparedStatement pre=null;
			Connection connection = DBUtil.getConnection();
			
			try {
				pre=connection.prepareStatement("insert into [user](user_name,user_password,school_id,user_department) values(?,?,?,?)");
				pre.setString(1,user.getUser_name());
				pre.setString(2,user.getUser_password());
				pre.setInt(3,user.getSchool_id());
				pre.setString(4,user.getUser_department());
				pre.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					pre.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		/*
		 * 根据用户名与密码取出用户信息
		 */
		public Object getUser(Class<?> clazz, String name ,String password) {
			Object obj = null;
			
			String tablename = this.getTableName(clazz);
			
			Connection connection = DBUtil.getConnection();
			PreparedStatement stmt;
			ResultSet rs;
			
			String sql = "select * from [" + tablename + "] where user_name = ? and user_password = ?";
			
			try {
				stmt = connection.prepareStatement(sql);
				stmt.setObject(1, name);
				stmt.setObject(2, password);
				rs = stmt.executeQuery();
				if(rs.next()){
					obj = this.loadData(clazz, rs);
				}
				return obj;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return obj;
		}

}
