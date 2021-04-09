package com.bongda.model;

public class HoaDonDoiChiTiet {
	private int id;
	private HopDong hopDong;
	public HoaDonDoiChiTiet(int id, HopDong hopDong) {
		super();
		this.id = id;
		this.hopDong = hopDong;
	}
	public HoaDonDoiChiTiet() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public HopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HopDong hopDong) {
		this.hopDong = hopDong;
	} 	
	
}
