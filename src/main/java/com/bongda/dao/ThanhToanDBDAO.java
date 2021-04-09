package com.bongda.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.bongda.model.ThanhToanDB;

public class ThanhToanDBDAO extends DAO {

	public ThanhToanDBDAO() {
		super();
	}

	public ArrayList<ThanhToanDB> getTongTienDB(){
		List<ThanhToanDB> list = new ArrayList<ThanhToanDB>();
	
		String sql = "{call sp_Tinh_Tong_Tien(?)}"; 
		try {
			long date = System.currentTimeMillis();
			CallableStatement cs = con.prepareCall(sql);
			//Date now = new Date(System.currentTimeMillis());
//			java.sql.Date dates = new java.sql.Date(now.getTime());
//			java.sql.Time times = new java.sql.Time(now.getTime());
//			System.out.println(dates);
//			System.out.println(times);
//			cs.setDate("NGAY_TT", dates);
//			cs.setTime("GIO_TT",times );
			
			
			java.sql.Timestamp now = new Timestamp(System.currentTimeMillis());
			cs.setTimestamp(1, now);

			ResultSet rs =cs.executeQuery();
			while(rs.next()) {
				ThanhToanDB thanhToanDB= new ThanhToanDB();
				thanhToanDB.setId(rs.getInt("id"));
				thanhToanDB.setTenDoi(rs.getString("tendoi"));
				thanhToanDB.setTongTien(rs.getBigDecimal("tongtien"));
				list.add(thanhToanDB);
			}
		}catch(Exception ex) {
			ex.printStackTrace();
	
	 }
		return (ArrayList<ThanhToanDB>) list;
  }

}
