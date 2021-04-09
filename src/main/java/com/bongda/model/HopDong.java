package com.bongda.model;

import java.util.Date;

public class HopDong {
	private int id;
	private TranDau tranDau;
	private DoiTac doiTac;
	private BanToChuc banToChuc;
	private Date ngayKiHD;
	private double gia;
	String moTa;
	public HopDong(int id, TranDau tranDau, DoiTac doiTac, BanToChuc banToChuc, Date ngayKiHD, double gia,
			String moTa) {
		super();
		this.id = id;
		this.tranDau = tranDau;
		this.doiTac = doiTac;
		this.banToChuc = banToChuc;
		this.ngayKiHD = ngayKiHD;
		this.gia = gia;
		this.moTa = moTa;
	}
	public HopDong() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public TranDau getTranDau() {
		return tranDau;
	}
	public void setTranDau(TranDau tranDau) {
		this.tranDau = tranDau;
	}
	public DoiTac getDoiTac() {
		return doiTac;
	}
	public void setDoiTac(DoiTac doiTac) {
		this.doiTac = doiTac;
	}
	public BanToChuc getBanToChuc() {
		return banToChuc;
	}
	public void setBanToChuc(BanToChuc banToChuc) {
		this.banToChuc = banToChuc;
	}
	public Date getNgayKiHD() {
		return ngayKiHD;
	}
	public void setNgayKiHD(Date ngayKiHD) {
		this.ngayKiHD = ngayKiHD;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	
	
}
