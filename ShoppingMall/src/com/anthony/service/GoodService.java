package com.anthony.service;

import java.util.List;

import com.anthony.Javabean.Good;
import com.anthony.dao.BaseDao;
/*
 * 此service方法为临时编写
 * 具体可日后再优化
 */
public class GoodService extends BaseDao
{
	/*
	 * 根据学校查询表记录
	 */
	public int getGoodsPageCount(int pageSize ,int school_id){
		
		String sql = "select count(*) from good where school_id=?";
		
		Object []parameters = {school_id}; 
		
		int rowCount =  this.BaseDaoPageCount(sql,parameters);
		
		return (rowCount-1)/pageSize+1;
	}
	/*
	 * 根据类型查询表记录
	 */
	public int getTypeGoodsPageCount(int pageSize ,int school_id , int type_id ){
		
		String sql = "select count(*) from good where school_id=? and type_id=?";
		
		Object []parameters = {school_id , type_id}; 
		
		int rowCount =  this.BaseDaoPageCount(sql,parameters);
		
		return (rowCount-1)/pageSize+1;
	}
	
	/*
	 * 根据关键字查询表记录
	 */
	public int getFuzzyGoodsPageCount(int pageSize ,int school_id , String keyword ){
			
			String sql = "select count(*) from good where school_id=? and good_name like  '%"+keyword+"%' " ;
			
			Object []parameters = {school_id}; 
			
			int rowCount =  this.BaseDaoPageCount(sql,parameters);
			
			return (rowCount-1)/pageSize+1;
		}
	
	/*
	 * 根据学校分页查询
	 */
	public List getGoodsPage(Class<?> clazz ,int pageNow, int pageSize,int school_id)
	{
		int num = (pageNow-1) * pageSize ;
		
		String sql="select top "+pageSize+" * from good where school_id=? and good_id not in (select top "+num+" good_id from good)";
		
		Object []parameters = {school_id}; 
		
		return this.BaseDaoGoodsPage(clazz, sql, parameters);
	}
	
	/*
	 * 根据学校与商品类型分页查询
	 */
	public List getTypeGoodsPage(Class<?> clazz ,int pageNow, int pageSize,int school_id , int type_id)
	{
		int num = (pageNow-1) * pageSize ;
		
		String sql="select top "+pageSize+" * from good where school_id=? and type_id=? and good_id not in (select top" +
				" "+num+" good_id from good)";
		
		Object []parameters = {school_id,type_id}; 
		
		return this.BaseDaoGoodsPage(clazz, sql, parameters);
	}
	
	/*
	 * 根据学校和关键字查询商品
	 */
	public List getFuzzyGoodsPage(Class<?> clazz , String keyword ,int school_id ,int pageNow, int pageSize)
	{
		int num = (pageNow-1) * pageSize ;
		
		String sql = "select top "+pageSize+" * from good where school_id=? and good_name like '%"+keyword+"%' " +
				"and good_id not in (select top "+num+" good_id from good)";
		
		Object []parameters = {school_id}; 
		
		return this.BaseDaoGoodsPage(clazz, sql, parameters);
	}
	
	/*
	 * 添加商品
	
	public void addGood(Good good)
	{
		String sql = "insert into good(good_name,good_image,good_description,good_price,good_place,good_date,user_id,type_id,school_id) " +
				"values('"+good.getGood_name()+"','"+good.getGood_image()+"','"+good.getGood_description()+"','"+good.getGood_price()+"'" +
				",'"+good.getGood_place()+"',getdate(),'"+good.getUser_id()+"','"+good.getType_id()+"','"+good.getSchool_id()+"')";
	
		this.addGood(good, sql);
	}
	 */
}