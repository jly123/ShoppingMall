package com.anthony.service;

import java.util.List;

import com.anthony.dao.BaseDao;

public class UserService extends BaseDao
{
	/*
	 * 响应用户查询自己发布商品的请求
	 */
	public List getGoods(Class<?> clazz ,Integer id ,int pageNow, int pageSize )
	{
		int num = (pageNow-1) * pageSize ;
		
		String sql = "select top "+pageSize+" * from good where user_id=? and good_id not in (select top" +
				" "+num+" good_id from good)";
		
		Object []parameters = {id};
		
		return this.BaseDaoGoodsPage(clazz, sql, parameters);
		
	}
	/*
	 * 响应用户查看他人详情信息请求
	 
	public List getOthersGoods(Class<?> clazz ,Integer id ,int pageNow, int pageSize)
	{
		int num = (pageNow-1) * pageSize ;
		
	}
*/
}
