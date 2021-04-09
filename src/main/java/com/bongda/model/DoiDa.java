package com.bongda.model;

public class DoiDa {
	private int id;
	private  DoiBong doiBong;
	private TranDau tranDau;
	private String loaiDoi;
	private String moTa;
	public DoiDa(int id, DoiBong doiBong, TranDau tranDau, String loaiDoi, String moTa) {
		super();
		this.id = id;
		this.doiBong = doiBong;
		this.tranDau = tranDau;
		this.loaiDoi = loaiDoi;
		this.moTa = moTa;
	}
	public DoiDa() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public DoiBong getDoiBong() {
		return doiBong;
	}
	public void setDoiBong(DoiBong doiBong) {
		this.doiBong = doiBong;
	}
	public TranDau getTranDau() {
		return tranDau;
	}
	public void setTranDau(TranDau tranDau) {
		this.tranDau = tranDau;
	}
	public String getLoaiDoi() {
		return loaiDoi;
	}
	public void setLoaiDoi(String loaiDoi) {
		this.loaiDoi = loaiDoi;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	
	
}
