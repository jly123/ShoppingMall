package com.anthony.Javabean;

public class user {
	private Integer user_id;
	private String user_name;
	private String user_password;
	private String user_email;
	private String user_image;
	private String user_phone;
	private String user_QQ;
	private Integer school_id;
	private String user_department;
	private String user_IDCard;
	private String user_status;
	public user(){
		super();
	}
	
	public user(Integer userId, String userName, String userPassword,
			String userEmail, String userImage, String userPhone,
			String userQQ, Integer schoolId, String userDepartment,
			String userIDCard, String userStatus) {
		user_id = userId;
		user_name = userName;
		user_password = userPassword;
		user_email = userEmail;
		user_image = userImage;
		user_phone = userPhone;
		user_QQ = userQQ;
		school_id = schoolId;
		user_department = userDepartment;
		user_IDCard = userIDCard;
		user_status = userStatus;
	}

	//get和set
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer userId) {
		user_id = userId;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String userPassword) {
		user_password = userPassword;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String userEmail) {
		user_email = userEmail;
	}
	public String getUser_image() {
		return user_image;
	}
	public void setUser_image(String userImage) {
		user_image = userImage;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String userPhone) {
		user_phone = userPhone;
	}
	public String getUser_QQ() {
		return user_QQ;
	}
	public void setUser_QQ(String userQQ) {
		user_QQ = userQQ;
	}
	public Integer getSchool_id() {
		return school_id;
	}
	public void setSchool_id(Integer schoolId) {
		school_id = schoolId;
	}
	public String getUser_department() {
		return user_department;
	}
	public void setUser_department(String userDepartment) {
		user_department = userDepartment;
	}
	public String getUser_IDCard() {
		return user_IDCard;
	}
	public void setUser_IDCard(String userIDCard) {
		user_IDCard = userIDCard;
	}
	public String getUser_status() {
		return user_status;
	}
	public void setUser_status(String userStatus) {
		user_status = userStatus;
	}
	//覆盖Object的基础方法

	@Override
	public String toString() {
		return "users [school_id=" + school_id + ", user_IDCard=" + user_IDCard
				+ ", user_QQ=" + user_QQ + ", user_department="
				+ user_department + ", user_email=" + user_email + ", user_id="
				+ user_id + ", user_image=" + user_image + ", user_name="
				+ user_name + ", user_password=" + user_password
				+ ", user_phone=" + user_phone + ", user_status=" + user_status
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((user_name == null) ? 0 : user_name.hashCode());
		result = prime * result
				+ ((user_password == null) ? 0 : user_password.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		user other = (user) obj;
		if (user_name == null) {
			if (other.user_name != null)
				return false;
		} else if (!user_name.equals(other.user_name))
			return false;
		if (user_password == null) {
			if (other.user_password != null)
				return false;
		} else if (!user_password.equals(other.user_password))
			return false;
		return true;
	}

	

	
	
}
