package com.bongda.model;

import java.util.Date;
import java.util.Timer;

public class TranDau {
	private int id;
	private String tenTranDau;
	private Date thoiGian;
	private String moTa;
	private SanDau sanDau;
	public TranDau(int id, String tenTranDau, Date thoiGian, String moTa) {
		super();
		this.id = id;
		this.tenTranDau = tenTranDau;
		this.thoiGian = thoiGian;
		this.moTa = moTa;
	}
	public TranDau() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenTranDau() {
		return tenTranDau;
	}
	public void setTenTranDau(String tenTranDau) {
		this.tenTranDau = tenTranDau;
	}


	public Date getThoiGian() {
		return thoiGian;
	}
	public void setThoiGian(Date thoiGian) {
		this.thoiGian = thoiGian;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public SanDau getSanDau() {
		return sanDau;
	}
	public void setSanDau(SanDau sanDau) {
		this.sanDau = sanDau;
	}
	

}
