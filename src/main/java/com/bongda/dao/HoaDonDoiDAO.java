package com.bongda.dao;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.bongda.model.ThanhToanTD;

public class HoaDonDoiDAO extends DAO{

	public HoaDonDoiDAO() {
		super();
	}
	public boolean luuHoaDonDoi(int idDoiBong,ArrayList<ThanhToanTD> list)  {
		// xoa het hoa don cu 
		// them hoa don moi
		// 
		BigDecimal tongTien= BigDecimal.ZERO;
		boolean kq=false;
		int idHoaDon=0;
		for(ThanhToanTD thanhToanTD:list) {
			tongTien= tongTien.add(thanhToanTD.getTongTien());
					
		}
		// luu hoadondoi
		String sqlHoaDon="INSERT INTO tblhoadondoi(iddoibong,ngaythanhtoan,tongtien)"
				+ " VALUES(?,?,?)";
		String sqlHoaDonChiTiet="INSERT INTO tblhoadondoichitiet(idhoadondoi,idhopdong)"
				+ " VALUES(?,?)";
		PreparedStatement ps;
		try {
			con.setAutoCommit(false);
			ps = con.prepareStatement(sqlHoaDon, Statement.RETURN_GENERATED_KEYS);
			java.sql.Date now= new java.sql.Date(System.currentTimeMillis());
			ps.setInt(1,idDoiBong);
			ps.setDate(2,now);
			ps.setBigDecimal(3, tongTien);
			int tmp= ps.executeUpdate();
			if(tmp>0) {
				ResultSet rs =ps.getGeneratedKeys();
				if(rs.next()) {
					idHoaDon=rs.getInt(1);
				}
			}
			System.out.println(idHoaDon);
			
			
			con.commit();
			// luu hoadon chi tiet
			con.setAutoCommit(false);
			for(ThanhToanTD thanhToanTD:list) {
				PreparedStatement ps2= con.prepareStatement(sqlHoaDonChiTiet);
				ps2.setInt(1, idHoaDon);
				ps2.setInt(2, thanhToanTD.getIdHopDong());
				ps2.executeUpdate();
				
			}
			con.commit();
			kq= true;
			
		} catch (SQLException e) {
			e.printStackTrace();
			if(con!=null)
				try {
					con.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			
		}finally{
			try {
				con.setAutoCommit(true);
			} catch (SQLException e) {
				kq=false;
				e.printStackTrace();
			}
			
		}
		
		
		return kq;
	}
	

}
