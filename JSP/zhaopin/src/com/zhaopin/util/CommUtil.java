package com.zhaopin.util;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class CommUtil {

	public static boolean isNotNULL(String s){
		if(s != null && !s.isEmpty()){
			return true;
		}
		return false;
	}
	
	public static String iso2utf8(String s){
		try {
			return new String(s.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	public static Date stringToDate(String s) {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		if (s != null) {
			try {
				return new Date(format.parse(s).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
