package com.anthony.Action;

import java.util.ArrayList;


import com.anthony.dao.BaseDao;

import com.anthony.Javabean.School;
import com.anthony.Javabean.user;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class UsersAction extends ActionSupport{
	
	private user loginUsers; //登录对象
	private user regUsers;//注册对象
	private School regschool;//学校
	private String repassword ;//重置密码
	private int user_id ;


	
	

	 
	public String  execute() throws  Exception{
	
		
			if(loginUsers.getUser_name()==null || "".equals(loginUsers.getUser_name())){
				//提示错误信息：用户名不可为空！
				this.addActionError("用户名不可为空！");
			} else if(loginUsers.getUser_password()== null || "".equals(loginUsers.getUser_password())){
				//提示错误信息：密码不可为空！
				this.addActionError("密码不可为空！");
			}else{
		
	//将表单传入的loginUsers对象，与数据库中的Users对象
		boolean isLogin=false;
		BaseDao baseDao=new BaseDao();
		ArrayList<Object> usersList=baseDao.getAll(user.class);
		
		for(Object obj:usersList){
			user users=(user)obj;
			if(loginUsers.equals(users)){
				//允许登陆
				loginUsers.setUser_id(users.getUser_id());
				loginUsers.setUser_email(users.getUser_email());
				loginUsers.setUser_image(users.getUser_image());
				loginUsers.setUser_phone(users.getUser_phone());	
				loginUsers.setUser_QQ(users.getUser_QQ());
				loginUsers.setSchool_id(users.getSchool_id());
				loginUsers.setUser_department(users.getUser_department());
				loginUsers.setUser_IDCard(users.getUser_IDCard());
			
			//赋值页面属性值
				isLogin=true;
				break;
			}
			
		}
		if(isLogin){
			//登陆成功，将loginUsers对象放入session中保存
		
			ActionContext.getContext().getSession().put("loginUsers", loginUsers);
		}else{
			//登陆失败
		}
		}
		
		return this.SUCCESS;
	}
	
	//退出登录
	public String  logout() throws  Exception{
		//退出登录，只需将session中的loginUser对象移除
		ActionContext.getContext().getSession().remove("loginUsers");
		return this.SUCCESS;
	}
	public String  regLogout() throws  Exception{
		//退出登录，只需将session中的loginUser对象移除
		
		ActionContext.getContext().getSession().remove("regUsers");
		return this.SUCCESS;
	}
	//注册
	public String register() throws  Exception{		
		BaseDao baseDao=new BaseDao();
		regschool.setProvince_id(1);
		ArrayList<Object> schoolList=baseDao.getAll(School.class);
		
		for(Object obj:schoolList){
			School school=(School)obj;
			regUsers.setSchool_id(school.getSchool_id());//同步school_id到user
			if(regschool.equals(school)){
				break;
			}else{
				baseDao.saveschool(regschool);
			}
		}
		
		baseDao.saveuser(regUsers);
		
		/*
		 * 自动登陆，将用户注册的数据从数据库取出
		 * 放入session
		 */
		regUsers = (user) baseDao.getUser(user.class, regUsers.getUser_name(), regUsers.getUser_password());
		
		if(regUsers != null){
			ActionContext.getContext().getSession().put("loginUsers", regUsers);
		}
		
		return "register_success";
		
	}
	
	
	/*//更新个人信息
	public  String update() throws  Exception{
		
		BaseDao baseDao=new BaseDao();
		loginUsers = (user) session.get("loginUsers");
		
		loginUsers=(user)session.get(loginUsers);
		System.out.println(loginUsers);
		if(loginUsers != null){
			user_id = loginUsers.getSchool_id();
		}
		baseDao.getById(user.class, user_id);
		//ArrayList<Object> usersList=baseDao.getAll(user.class);
		//更新
		//baseDao.update(loginUsers);
		ArrayList<Object> usersList=baseDao.getAll(user.class);
		for(Object obj:usersList){
			user users=(user)obj;
			loginUsers.setUser_id(users.getUser_id());
			loginUsers.setUser_email(users.getUser_email());
			loginUsers.setUser_name(users.getUser_name());
			loginUsers.setUser_image(users.getUser_image());
			loginUsers.setUser_phone(users.getUser_phone());	
			loginUsers.setUser_QQ(users.getUser_QQ());
			loginUsers.setSchool_id(users.getSchool_id());
			loginUsers.setUser_department(users.getUser_department());
			loginUsers.setUser_IDCard(users.getUser_IDCard());
		}
		//ActionContext.getContext().getSession().put("loginUsers", loginUsers);
		
		System.out.println(loginUsers);
		System.out.println(loginUsers.getUser_id());
		System.out.println(loginUsers.getUser_name());
		return "update_sucess";
	}
	public  String updatea() throws  Exception{
		BaseDao baseDao=new BaseDao();
		ArrayList<Object> usersList=baseDao.getAll(user.class);
		for(Object obj:usersList){
			user users=(user)obj;
			loginUsers.setUser_id(users.getUser_id());	
			loginUsers.setUser_name(users.getUser_name());				
			loginUsers.setUser_QQ(loginUsers.getUser_QQ());
			loginUsers.setUser_phone(loginUsers.getUser_phone());
			loginUsers.setSchool_id(users.getSchool_id());
			loginUsers.setUser_department(users.getUser_department());
		
		
		}
		int user_id=loginUsers.getUser_id();
		String user_phone=loginUsers.getUser_phone();
		String user_QQ=loginUsers.getUser_QQ();
		System.out.println(user_phone);
		
		baseDao.update(loginUsers,user_id,user_phone,user_QQ);
		System.err.println(loginUsers);
		return "update_sucess";
	}*/
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
	public user getRegUser() {
		return regUsers;
	}
	public void setRegUser(user regUser) {
		this.regUsers = regUser;
	}
	public School getRegschool() {
		return regschool;
	}
	public void setRegschool(School regschool) {
		this.regschool = regschool;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public user getLoginUsers() {
		return loginUsers;
	}
	public void setLoginUsers(user loginUsers) {
		this.loginUsers = loginUsers;
	}
}
