package com.bongda.model;

public class DoiTac {
	private int id;
	private String tenDoiTac;
	private String diaChi;
	private String doiTac;
	public DoiTac(int id, String tenDoiTac, String diaChi, String doiTac) {
		super();
		this.id = id;
		this.tenDoiTac = tenDoiTac;
		this.diaChi = diaChi;
		this.doiTac = doiTac;
	}
	public DoiTac() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenDoiTac() {
		return tenDoiTac;
	}
	public void setTenDoiTac(String tenDoiTac) {
		this.tenDoiTac = tenDoiTac;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getDoiTac() {
		return doiTac;
	}
	public void setDoiTac(String doiTac) {
		this.doiTac = doiTac;
	}
	
	
}
