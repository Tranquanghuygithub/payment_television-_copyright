package com.bongda.model;

import java.util.Date;
import java.util.List;

public class HoaDonDoi {
	private int id;
	private DoiBong doiBong;
	private Date ngayThanhToan;
	private double tongTien;
	private int soLuong;
	private List<HoaDonDoiChiTiet> hoaDonDoiChiTiets;
	public HoaDonDoi(int id, DoiBong doiBong, Date ngayThanhToan, double tongTien, int soLuong,
			List<HoaDonDoiChiTiet> hoaDonDoiChiTiets) {
		super();
		this.id = id;
		this.doiBong = doiBong;
		this.ngayThanhToan = ngayThanhToan;
		this.tongTien = tongTien;
		this.soLuong = soLuong;
		this.hoaDonDoiChiTiets = hoaDonDoiChiTiets;
	}
	public HoaDonDoi() {
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
	public Date getNgayThanhToan() {
		return ngayThanhToan;
	}
	public void setNgayThanhToan(Date ngayThanhToan) {
		this.ngayThanhToan = ngayThanhToan;
	}
	public double getTongTien() {
		return tongTien;
	}
	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public List<HoaDonDoiChiTiet> getHoaDonDoiChiTiets() {
		return hoaDonDoiChiTiets;
	}
	public void setHoaDonDoiChiTiets(List<HoaDonDoiChiTiet> hoaDonDoiChiTiets) {
		this.hoaDonDoiChiTiets = hoaDonDoiChiTiets;
	}
	

}
