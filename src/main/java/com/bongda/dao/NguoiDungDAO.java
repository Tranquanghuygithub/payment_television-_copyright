package com.bongda.dao;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bongda.model.HoTen;
import com.bongda.model.NguoiDung;

public class NguoiDungDAO extends DAO {
	public NguoiDungDAO() {
		super();
	}

	public boolean checkLogin(NguoiDung nd) {
		boolean kq = false;
		if (nd.getUsername().contains("true") || nd.getUsername().contains("=") || nd.getPassword().contains("true")
				|| nd.getPassword().contains("="))
			return false;
		String sql = "{call kiemtraDN(?,?)}"; // su dung stored procedure
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setString(1, nd.getUsername());
			cs.setString(2, nd.getPassword());
			ResultSet rs = cs.executeQuery();
			if (rs.next()) {
				nd.setId(rs.getInt("id"));
				nd.setVaiTro(rs.getString("vaitro"));
				int id= rs.getInt("idhoten");
				// hoten
//				HoTen ht = new HoTen();
//				ht.setHo(rs.getString("ho"));
//				ht.setTen(rs.getString("ten"));
//				ht.setTenDem(rs.getString("tendem"));
//				nd.setHoTen(ht);
				kq = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = false;
		}
		return kq;
	}
}
