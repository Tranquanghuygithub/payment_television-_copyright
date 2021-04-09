package com.bongda.model;

import java.math.BigDecimal;

public class ThanhToanDB extends DoiBong{
	private BigDecimal tongTien;

	public ThanhToanDB() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ThanhToanDB(int id, String tenDoi, String trangPhuc, String diaChi, String moTa, SanDau sanDau) {
		super(id, tenDoi, trangPhuc, diaChi, moTa, sanDau);
	}

	public BigDecimal getTongTien() {
		return tongTien;
	}

	public void setTongTien(BigDecimal tongTien) {
		this.tongTien = tongTien;
	}
	
	
	
	
	
}
