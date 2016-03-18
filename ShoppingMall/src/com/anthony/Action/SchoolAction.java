package com.anthony.Action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.anthony.Javabean.School;
import com.anthony.dao.BaseDao;
import com.opensymphony.xwork2.ActionSupport;

/*
 * 这是一个关于学校的action
 * 处理关于学校的业务逻辑
 */
public class SchoolAction extends ActionSupport implements RequestAware , SessionAware
{
	private List schoolList;
	
	private Map<String, Object> request;
	private Map<String,Object> session;

	/*
	 * 
	 *查询出全部的学校 
	 * 
	 */
	public String selectSchool() throws Exception
	{
		BaseDao baseDao = new BaseDao();
		
		//当用户切换学校时，删除session中school
		session.remove("school");
		
		schoolList = baseDao.getAll(School.class);
		
		return "school_success";
	}
	
	
	
	
	public List getSchoolList()
	{
		return schoolList;
	}
	public void setSchoolList(List schoolList)
	{
		this.schoolList = schoolList;
	}
	public Map<String, Object> getRequest() {
		return request;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
