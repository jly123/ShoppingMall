package com.anthony.Javabean;

import java.util.Date;

public class Good
{
	private int good_id ;
	private String good_name ;
	private String good_image ; 
	private String good_description ;
	private double good_price ;
	private String good_place ;
	private Date good_date ;
	private int user_id ;
	private int type_id ;
	private int school_id ;
	
	

	@Override
	public String toString()
	{
		return "Good [good_id=" + good_id + ", good_name=" + good_name
				+ ", good_image=" + good_image + ", good_description="
				+ good_description + ", good_price=" + good_price
				+ ", good_place=" + good_place + ", good_date=" + good_date
				+ ", user_id=" + user_id + ", type_id=" + type_id
				+ ", school_id=" + school_id + "]";
	}
	
	
	
	
	
	@Override
	public int hashCode()
	{
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((good_date == null) ? 0 : good_date.hashCode());
		result = prime
				* result
				+ ((good_description == null) ? 0 : good_description.hashCode());
		result = prime * result + good_id;
		result = prime * result
				+ ((good_image == null) ? 0 : good_image.hashCode());
		result = prime * result
				+ ((good_name == null) ? 0 : good_name.hashCode());
		result = prime * result
				+ ((good_place == null) ? 0 : good_place.hashCode());
		long temp;
		temp = Double.doubleToLongBits(good_price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + school_id;
		result = prime * result + type_id;
		result = prime * result + user_id;
		return result;
	}





	@Override
	public boolean equals(Object obj)
	{
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Good other = (Good) obj;
		if (good_date == null)
		{
			if (other.good_date != null)
				return false;
		} else if (!good_date.equals(other.good_date))
			return false;
		if (good_description == null)
		{
			if (other.good_description != null)
				return false;
		} else if (!good_description.equals(other.good_description))
			return false;
		if (good_id != other.good_id)
			return false;
		if (good_image == null)
		{
			if (other.good_image != null)
				return false;
		} else if (!good_image.equals(other.good_image))
			return false;
		if (good_name == null)
		{
			if (other.good_name != null)
				return false;
		} else if (!good_name.equals(other.good_name))
			return false;
		if (good_place == null)
		{
			if (other.good_place != null)
				return false;
		} else if (!good_place.equals(other.good_place))
			return false;
		if (Double.doubleToLongBits(good_price) != Double
				.doubleToLongBits(other.good_price))
			return false;
		if (school_id != other.school_id)
			return false;
		if (type_id != other.type_id)
			return false;
		if (user_id != other.user_id)
			return false;
		return true;
	}





	public int getSchool_id()
	{
		return school_id;
	}
	public void setSchool_id(int school_id)
	{
		this.school_id = school_id;
	}
	public int getGood_id()
	{
		return good_id;
	}
	public void setGood_id(int good_id)
	{
		this.good_id = good_id;
	}
	public String getGood_name()
	{
		return good_name;
	}
	public void setGood_name(String good_name)
	{
		this.good_name = good_name;
	}
	public String getGood_image()
	{
		return good_image;
	}
	public void setGood_image(String good_image)
	{
		this.good_image = good_image;
	}
	public String getGood_description()
	{
		return good_description;
	}
	public void setGood_description(String good_description)
	{
		this.good_description = good_description;
	}
	public double getGood_price()
	{
		return good_price;
	}
	public void setGood_price(double good_price)
	{
		this.good_price = good_price;
	}
	public String getGood_place()
	{
		return good_place;
	}
	public void setGood_place(String good_place)
	{
		this.good_place = good_place;
	}
	public Date getGood_date()
	{
		return good_date;
	}
	public void setGood_date(Date good_date)
	{
		this.good_date = good_date;
	}
	public int getUser_id()
	{
		return user_id;
	}
	public void setUser_id(int user_id)
	{
		this.user_id = user_id;
	}
	public int getType_id()
	{
		return type_id;
	}
	public void setType_id(int type_id)
	{
		this.type_id = type_id;
	}
	
	

}
