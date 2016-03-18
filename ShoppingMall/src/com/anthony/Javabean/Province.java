package com.anthony.Javabean;

public class Province
{
	private int province_id ; 
	
	private String province_name ;

	public int getProvince_id()
	{
		return province_id;
	}

	public void setProvince_id(int province_id)
	{
		this.province_id = province_id;
	}

	public String getProvince_name()
	{
		return province_name;
	}

	public void setProvince_name(String province_name)
	{
		this.province_name = province_name;
	}

	@Override
	public String toString()
	{
		return "province [province_id=" + province_id + ", province_name="
				+ province_name + "]";
	}

	@Override
	public int hashCode()
	{
		final int prime = 31;
		int result = 1;
		result = prime * result + province_id;
		result = prime * result
				+ ((province_name == null) ? 0 : province_name.hashCode());
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
		Province other = (Province) obj;
		if (province_id != other.province_id)
			return false;
		if (province_name == null)
		{
			if (other.province_name != null)
				return false;
		} else if (!province_name.equals(other.province_name))
			return false;
		return true;
	}

	
	
}
