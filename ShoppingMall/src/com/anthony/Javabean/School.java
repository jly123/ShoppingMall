package com.anthony.Javabean;

public class School
{
	private Integer school_id ;
	
	private String school_name ;
	
	private  Integer  province_id;
	
	
	public School() {
		super();
		// TODO Auto-generated constructor stub
	}

	public School(Integer schoolId, String schoolName, Integer provinceId) {
		school_id = schoolId;
		school_name = schoolName;
		province_id = provinceId;
	}

	public Integer getSchool_id() {
		return school_id;
	}

	public void setSchool_id(Integer schoolId) {
		school_id = schoolId;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String schoolName) {
		school_name = schoolName;
	}

	public Integer getProvince_id() {
		return province_id;
	}

	public void setProvince_id(Integer provinceId) {
		province_id = provinceId;
	}

	@Override
	public String toString() {
		return "School [province_id=" + province_id + ", school_id="
				+ school_id + ", school_name=" + school_name + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((school_name == null) ? 0 : school_name.hashCode());
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
		School other = (School) obj;
		if (school_name == null) {
			if (other.school_name != null)
				return false;
		} else if (!school_name.equals(other.school_name))
			return false;
		return true;
	}

	


	
	
	
	
	

}
