package com.bongda.model;

public class DiaChi {
	private int id;
	private String soNha;
	private String toaNha;
	private String xomPho;
	private String phuongXa;
	private String quyenHuyen;
	private String tinhThanh;
	public DiaChi(int id, String soNha, String toaNha, String xomPho, String phuongXa, String quyenHuyen,
			String tinhThanh) {
		super();
		this.id = id;
		this.soNha = soNha;
		this.toaNha = toaNha;
		this.xomPho = xomPho;
		this.phuongXa = phuongXa;
		this.quyenHuyen = quyenHuyen;
		this.tinhThanh = tinhThanh;
	}
	public DiaChi() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSoNha() {
		return soNha;
	}
	public void setSoNha(String soNha) {
		this.soNha = soNha;
	}
	public String getToaNha() {
		return toaNha;
	}
	public void setToaNha(String toaNha) {
		this.toaNha = toaNha;
	}
	public String getXomPho() {
		return xomPho;
	}
	public void setXomPho(String xomPho) {
		this.xomPho = xomPho;
	}
	public String getPhuongXa() {
		return phuongXa;
	}
	public void setPhuongXa(String phuongXa) {
		this.phuongXa = phuongXa;
	}
	public String getQuyenHuyen() {
		return quyenHuyen;
	}
	public void setQuyenHuyen(String quyenHuyen) {
		this.quyenHuyen = quyenHuyen;
	}
	public String getTinhThanh() {
		return tinhThanh;
	}
	public void setTinhThanh(String tinhThanh) {
		this.tinhThanh = tinhThanh;
	}
	
}
