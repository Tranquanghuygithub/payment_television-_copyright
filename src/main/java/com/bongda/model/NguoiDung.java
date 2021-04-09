package com.bongda.model;

public class NguoiDung {
	private int id;
	private String username;
	private String password;
	private HoTen hoTen;
	private DiaChi diaChi;
	private String email; 	
	private String vaiTro;
	private String sdt;

	public NguoiDung(String username, String password, HoTen hoTen, DiaChi diaChi, String email, String vaiTro,
			String sdt) {
		super();
		this.username = username;
		this.password = password;
		this.hoTen = hoTen;
		this.diaChi = diaChi;
		this.email = email;
		this.vaiTro = vaiTro;
		this.sdt = sdt;
	}
	public NguoiDung() {
		super();
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public HoTen getHoTen() {
		return hoTen;
	}
	public void setHoTen(HoTen hoTen) {
		this.hoTen = hoTen;
	}
	public DiaChi getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(DiaChi diaChi) {
		this.diaChi = diaChi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getVaiTro() {
		return vaiTro;
	}
	public void setVaiTro(String vaiTro) {
		this.vaiTro = vaiTro;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
}
