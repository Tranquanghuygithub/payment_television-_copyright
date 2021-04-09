package com.bongda.model;

public class HoTen {
	private int id;
	private String ho;
	private String tenDem;
	private String ten;
	public HoTen(int id, String ho, String tenDem, String ten) {
		super();
		this.id = id;
		this.ho = ho;
		this.tenDem = tenDem;
		this.ten = ten;
	}
	public HoTen() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHo() {
		return ho;
	}
	public void setHo(String ho) {
		this.ho = ho;
	}
	public String getTenDem() {
		return tenDem;
	}
	public void setTenDem(String tenDem) {
		this.tenDem = tenDem;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	
}
