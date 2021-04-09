package com.bongda.model;

import java.math.BigDecimal;
import java.util.Date;

public class ThanhToanTD extends TranDau{
	private BigDecimal tongTien;
	private int idHopDong;

	public BigDecimal getTongTien() {
		return tongTien;
	}

	public ThanhToanTD() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ThanhToanTD(int id, String tenTranDau, Date thoiGian, String moTa) {
		super(id, tenTranDau, thoiGian, moTa);
		// TODO Auto-generated constructor stub
	}

	public void setTongTien(BigDecimal tongTien) {
		this.tongTien = tongTien;
	}

	public int getIdHopDong() {
		return idHopDong;
	}

	public void setIdHopDong(int idHopDong) {
		this.idHopDong = idHopDong;
	}
	

}
