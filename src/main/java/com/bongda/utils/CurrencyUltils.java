package com.bongda.utils;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.Locale;

public class CurrencyUltils {
	public static String covertCurrency(BigDecimal bigDecimal) {
		 Locale locale= new Locale("vi","VN");
	        NumberFormat currenyFormat= NumberFormat.getCurrencyInstance(locale);
	        BigDecimal vnd =new BigDecimal(1000000000);
	        String str=currenyFormat.format(vnd);
	        return str;
	}

}
