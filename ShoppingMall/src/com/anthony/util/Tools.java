package com.anthony.util;

public class Tools {
	//提供一个方法，将乱码转成gb2312，utf-8
	
	public static String getNewString(String luanma){
		
		String result="";
		try {
			
			result=new String(luanma.getBytes("ISO-8859-1"),"GBK");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
