package com.bongda.model;

public class DoiBong {
	private int id;
	private String tenDoi;
	private String trangPhuc;
	private String diaChi;
	private String moTa;
	private SanDau sanDau;
	public DoiBong(int id, String tenDoi, String trangPhuc, String diaChi, String moTa, SanDau sanDau) {
		super();
		this.id = id;
		this.tenDoi = tenDoi;
		this.trangPhuc = trangPhuc;
		this.diaChi = diaChi;
		this.moTa = moTa;
		this.sanDau = sanDau;
	}
	public DoiBong() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenDoi() {
		return tenDoi;
	}
	public void setTenDoi(String tenDoi) {
		this.tenDoi = tenDoi;
	}
	public String getTrangPhuc() {
		return trangPhuc;
	}
	public void setTrangPhuc(String trangPhuc) {
		this.trangPhuc = trangPhuc;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
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
