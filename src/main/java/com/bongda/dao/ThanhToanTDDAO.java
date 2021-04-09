package com.bongda.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.bongda.model.ThanhToanDB;
import com.bongda.model.ThanhToanTD;

public class ThanhToanTDDAO extends DAO{

	public ThanhToanTDDAO() {
		super();
	}
	public ArrayList<ThanhToanTD> getThanhToanTD(int idDoiBong) {
		ArrayList<ThanhToanTD> list= new ArrayList<ThanhToanTD>();
		String sql = "{call sp_Thanh_Toan_TD(?,?)}"; 
		try {
			@SuppressWarnings("unused")
			long date = System.currentTimeMillis();
			CallableStatement cs = con.prepareCall(sql);
			
			
			java.sql.Timestamp now = new Timestamp(System.currentTimeMillis());
			cs.setInt(1, idDoiBong);
			cs.setTimestamp(2, now);

			ResultSet rs =cs.executeQuery();
			while(rs.next()) {
				ThanhToanTD thanhToanTD = new ThanhToanTD();
				thanhToanTD.setId(rs.getInt("idtrandau"));
				thanhToanTD.setTenTranDau(rs.getString("ten"));
				thanhToanTD.setThoiGian(rs.getDate("thoigian"));
				thanhToanTD.setTongTien(rs.getBigDecimal("tongtien"));
				thanhToanTD.setIdHopDong(rs.getInt("idhd"));
				list.add(thanhToanTD);
	
			}
		}catch(Exception ex) {
			ex.printStackTrace();
	
	 }
		return  list;
	}

}
