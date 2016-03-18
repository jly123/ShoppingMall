package com.anthony.Action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.anthony.Javabean.Good;
import com.anthony.Javabean.School;
import com.anthony.Javabean.user;
import com.anthony.service.GoodService;
import com.anthony.util.Tools;
import com.opensymphony.xwork2.ActionSupport;

/*
 * 这是一个对商品操作的action
 * 处理对商品的增删改
 */
public class CurdGoodAction extends ActionSupport implements RequestAware , SessionAware
{
	
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	
	private Good agood ;
	private user users ;
	
	
	/*
	 * 作用域
	 */
	private Map<String, Object> request;
	private Map<String,Object> session;
	
	
	
	/*
	 * 
	 * 添加商品
	 */
	public String addGood() throws Exception
	{
		GoodService goodService = new GoodService();
		
		/*
		 * 先创建一个目录
		 */
		String path = ServletActionContext.getRequest().getRealPath("/")+"image";
		
		File file = new File(path);
		
		if(!file.exists()){
			
			file.mkdir();
			
			}
		/*
		 * 要存进去的文件，（存到哪里，存进去的名字 ）真正存到磁盘上的文件
		 */
		File saveFile = new File(path,uploadFileName);
		
		FileOutputStream fos = new FileOutputStream(saveFile);
		FileInputStream  fis = new FileInputStream(upload);
		
		byte[] b=new byte[512];
		
		int len = -1;
		
		while((len=fis.read(b))!=-1){
			
			fos.write(b, 0, len);
			fos.flush();
			
		}
		fis.close();
		fos.close();

		//取出共享数据
		user loginUser = (user) session.get("loginUsers");
		School school = (School) session.get("school");
		
		/*
		 * 将商品添加到数据库中
		 */
		agood.setGood_image(uploadFileName);
		agood.setSchool_id(school.getSchool_id());
		agood.setUser_id(loginUser.getUser_id());
		
		goodService.addGood(agood);
		
		/*
		 * 将用户联系方式更新到数据库
		 */
		users.setUser_id(loginUser.getUser_id());
		goodService.update(users);
		
		/*
		 * 更新session中的用户信息
		 */
		loginUser.setUser_phone(users.getUser_phone());
		loginUser.setUser_QQ(users.getUser_QQ());
		
		session.put("loginUsers", loginUser);
			
		return super.execute();
	}



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public File getUpload()
	{
		return upload;
	}
	public void setUpload(File upload)
	{
		this.upload = upload;
	}
	public String getUploadContentType()
	{
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType)
	{
		this.uploadContentType = uploadContentType;
	}
	public String getUploadFileName()
	{
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName)
	{
		this.uploadFileName = uploadFileName;
	}
	public Good getAgood()
	{
		return agood;
	}
	public void setAgood(Good agood)
	{
		this.agood = agood;
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
	public user getUsers()
	{
		return users;
	}
	public void setUsers(user users)
	{
		this.users = users;
	}
}
