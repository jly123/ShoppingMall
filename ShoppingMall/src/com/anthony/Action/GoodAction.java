package com.anthony.Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.anthony.Javabean.Good;
import com.anthony.Javabean.Goodtype;
import com.anthony.Javabean.School;
import com.anthony.Javabean.user;
import com.anthony.service.GoodService;
import com.anthony.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
/*
 * 这是一个与商品有关的action
 * 处理商品的逻辑
 */
public class GoodAction extends ActionSupport implements RequestAware , SessionAware
{
	/*
	 * url传来的参数
	 */
	private int school_id ;
	private int type_id ;
	private int good_id ;
	private int user_id ;
	/*
	 * 因没有建立关键字相关的表
	 * 暂时使用url传中文
	 */
	private String value;
	
	//页数
	private int pageCount ;
	//用户期望显示的页数
	private int s_pageNow ;
	
	
	private School school ;
	private Goodtype goodType ;
	private Good good ;
	private user user ;
	
	/*
	 * 数据集合
	 */
	private List goodtypeList ;
	private List goodList ;
	private List typegoodList ;
	private List userGoodList ;
	private List otherGoodList ;
	
	/*
	 * 作用域
	 */
	private Map<String, Object> request;
	private Map<String,Object> session;
	
	//每页显示12条记录
	final int pageSize = 12 ;
	//默认显示第一页
	int pageNow = 1;
	
	GoodService goodService = new GoodService();
	UserService userService = new UserService();
	
	
	
	/*
	 * 根据学校id查询出这个学校所有的商品
	 */
	public String getAllGoods() throws Exception
	{
		GoodService goodService = new GoodService();
		 //从session取出用户所选的学校
		school = (School) session.get("school");
		
		if(school != null){
			school_id = school.getSchool_id(); 
		}
		
		goodtypeList = goodService.getAll(Goodtype.class);
		goodList = goodService.getGoodsPage(Good.class, pageNow, pageSize,school_id);
		pageCount = goodService.getGoodsPageCount( pageSize,school_id);
		school = (School) goodService.getById(School.class,school_id);
		
		/*
		 * 共享数据
		 */
		request.put("pageNow", pageNow);
		session.put("school", school);
		session.put("goodtypeList", goodtypeList);
		
		return "good_success";
	}
	
	/*
	 * 响应用户查询某类型商品的请求
	 */
	public String getTypeGoods() throws Exception
	{
		GoodService goodService = new GoodService();
		
		pageCount = goodService.getTypeGoodsPageCount(pageSize , getSchool_id(), type_id);
		
		goodList = goodService.getTypeGoodsPage(Good.class, pageNow, pageSize, getSchool_id(), type_id);
		
		/*
		 * 共享数据
		 */
		request.put("pageNow", pageNow);
		
		return "typegood_success";
		
	}
	
	/*
	 * 模糊查询
	 */
	public String getFuzzyGoods() throws Exception
	{
		GoodService goodService = new GoodService();
		
		pageCount = goodService.getFuzzyGoodsPageCount(pageSize, getSchool_id(), value);
		
		goodList = goodService.getFuzzyGoodsPage(Good.class, value, getSchool_id() , pageNow , pageSize);
		
		/*
		 * 共享数据
		 */
		request.put("pageNow", pageNow);
		
		return "typegood_success";
		
	}
	
	/*
	 * 显示商品详情信息
	 */
	public String getDetailsGoods() throws Exception
	{
		GoodService goodService = new GoodService();
		//取出商品信息
		good = (Good) goodService.getById(Good.class, good_id);
		//取出商品所属用户信息
		user = (user) goodService.getById(user.class, good.getUser_id());
		
		//request.put("uesr", user);
		
		return "Details_success";
	}
	
	/*
	 * 用户查询自己发布的商品
	 */
	public String getUserGood() throws Exception
	{
		user loginUser = (user) session.get("loginUsers");
		
		userGoodList = userService.getGoods(Good.class, loginUser.getUser_id(), pageNow, pageSize);
		
		return "UserGood_success";
	}
	
	/*
	 * 用户查看其他用户的详细信息
	 */
	public String getOthersGood() throws Exception
	{
		user = (user) goodService.getById(user.class, user_id);
		
		otherGoodList = userService.getGoods(Good.class, user_id, pageNow, pageSize);
		
		return "OthersGood_success";
	}
	
	
	
	
	/*
	 * 以下为set/get代码，请忽略
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	

	public void setS_pageNow(int s_pageNow)
	{
		/*
		 * 如果页面传过来的页码不为1.
		 * 则将传过来页码的赋值给pageNow
		 */
		if(s_pageNow != 1){
			pageNow = s_pageNow;
			
		}
	}
	public int getSchool_id()
	{
		school = (School) session.get("school");
		if(school != null){
			school_id = school.getSchool_id();
		}
		return school_id;
	}
	public void setSchool_id(int school_id)
	{
		this.school_id = school_id;
	}
	public int getType_id()
	{
		return type_id;
	}
	public void setType_id(int type_id)
	{
		this.type_id = type_id;
	}
	public int getPageCount()
	{
		return pageCount;
	}
	public void setPageCount(int pageCount)
	{
		this.pageCount = pageCount;
	}
	public School getSchool()
	{
		return school;
	}
	public void setSchool(School school)
	{
		this.school = school;
	}
	public List getGoodList()
	{
		return goodList;
	}
	public void setGoodList(List goodList)
	{
		this.goodList = goodList;
	}
	public List getGoodtypeList()
	{
		return goodtypeList;
	}
	public void setGoodtypeList(List goodtypeList)
	{
		this.goodtypeList = goodtypeList;
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
	public List getTypegoodList()
	{
		return typegoodList;
	}
	public void setTypegoodList(List typegoodList)
	{
		this.typegoodList = typegoodList;
	}
	public String getValue()
	{
		return value;
	}
	public void setValue(String value)
	{
		this.value = value;
	}
	public Goodtype getGoodType()
	{
		return goodType;
	}
	public void setGoodType(Goodtype goodType)
	{
		this.goodType = goodType;
	}

	public int getGood_id()
	{
		return good_id;
	}

	public void setGood_id(int good_id)
	{
		this.good_id = good_id;
	}

	public Good getGoods()
	{
		return good;
	}
	public void setGoods(Good good)
	{
		this.good = good;
	}

	public user getUser()
	{
		return user;
	}
	public void setUser(user user)
	{
		this.user = user;
	}
	public List getUserGoodList()
	{
		return userGoodList;
	}
	public void setUserGoodList(List userGoodList)
	{
		this.userGoodList = userGoodList;
	}
	public List getOtherGoodList()
	{
		return otherGoodList;
	}
	public void setOtherGoodList(List otherGoodList)
	{
		this.otherGoodList = otherGoodList;
	}
	public int getUser_id()
	{
		return user_id;
	}
	public void setUser_id(int user_id)
	{
		this.user_id = user_id;
	}
}