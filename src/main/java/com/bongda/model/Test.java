package com.bongda.model;


import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import com.bongda.dao.NguoiDungDAO;
import com.bongda.dao.ThanhToanDBDAO;
import com.bongda.dao.ThanhToanTDDAO;

public class Test {
	public static void main(String[] args) {
		Date date= new Date();
				
		SimpleDateFormat simpleDateFormat= new SimpleDateFormat("dd-MM-YYYY");
		String time= simpleDateFormat.format(date);
		System.out.println(time);
	        
	}
}
