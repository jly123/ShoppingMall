package com.anthony.Javabean;

import java.io.Serializable;

public class Goodtype implements Serializable
{
	/**
	 * 
	 */

	private int type_id ;
	
	private String type_name ;

	public int getType_id()
	{
		return type_id;
	}

	public void setType_id(int type_id)
	{
		this.type_id = type_id;
	}

	public String getType_name()
	{
		return type_name;
	}

	public void setType_name(String type_name)
	{
		this.type_name = type_name;
	}

	@Override
	public String toString()
	{
		return "goodtype [type_id=" + type_id + ", type_name=" + type_name
				+ "]";
	}

	@Override
	public int hashCode()
	{
		final int prime = 31;
		int result = 1;
		result = prime * result + type_id;
		result = prime * result
				+ ((type_name == null) ? 0 : type_name.hashCode());
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
		Goodtype other = (Goodtype) obj;
		if (type_id != other.type_id)
			return false;
		if (type_name == null)
		{
			if (other.type_name != null)
				return false;
		} else if (!type_name.equals(other.type_name))
			return false;
		return true;
	}

	
	

}
