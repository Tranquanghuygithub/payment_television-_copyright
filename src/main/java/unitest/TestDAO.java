package unitest;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.junit.Test;

import com.bongda.dao.ThanhToanDBDAO;
import com.bongda.dao.ThanhToanTDDAO;
import com.bongda.model.ThanhToanDB;
import com.bongda.model.ThanhToanTD;

public class TestDAO {

	
	@Test
	public void getDsThanhToanDB_testChuan1() {
		// tra ve nhieu doi bong can thanh toan
		ThanhToanDBDAO thanhToanDBDAO= new ThanhToanDBDAO();
		ArrayList<ThanhToanDB> dsThanhToanDB= thanhToanDBDAO.getTongTienDB();
		assertNotNull(dsThanhToanDB);
		assertTrue(dsThanhToanDB.size()>=2);
	}
//	@Test
//	public void getDsThanhToanDB_testChuan2() {
//		// tra ve chi 1 doi bong can thanh toan
//		ThanhToanDBDAO thanhToanDBDAO= new ThanhToanDBDAO();
//		ArrayList<ThanhToanDB> dsThanhToanDB= thanhToanDBDAO.getTongTienDB();
//		assertNotNull(dsThanhToanDB);
//		assertEquals(1, dsThanhToanDB.size());
//	}
	@Test
	public void getDsThanhToanDB_testChuan3() {
		// tra ve doi bong co nhieu bann quyen truyen hinh vua la san khach vua la san nha
		ThanhToanDBDAO thanhToanDBDAO= new ThanhToanDBDAO();
		int idDoiBong=100;
		String tenDB="Becamex Bình Dương";
		BigDecimal total=new BigDecimal("18000000");
		ArrayList<ThanhToanDB> dsThanhToanDB =thanhToanDBDAO.getTongTienDB();
		ThanhToanDB thanhToanDB= new ThanhToanDB();
		for(ThanhToanDB t:dsThanhToanDB) {
			if(t.getId()==100) {
				thanhToanDB.setId(t.getId());
				thanhToanDB.setTenDoi(t.getTenDoi());
				thanhToanDB.setTongTien(t.getTongTien());
				break;
			}
		}
		// kiem tra tong tien tra ve co dung khong
		assertEquals(idDoiBong, thanhToanDB.getId());
		assertEquals(tenDB,thanhToanDB.getTenDoi());
		assertEquals(total, thanhToanDB.getTongTien());
		
	}
	@Test
	public void getDsThanhToanDB_testChuan4() {
		// kieem tra doi bong vua la chu nha vua la khach
		ThanhToanDBDAO thanhToanDBDAO= new ThanhToanDBDAO();
		int idDoiBong=101;
		String tenDB="Topenland Bình Định";
		BigDecimal total=new BigDecimal("15000000");
		ArrayList<ThanhToanDB> dsThanhToanDB =thanhToanDBDAO.getTongTienDB();
		ThanhToanDB thanhToanDB= new ThanhToanDB();
		for(ThanhToanDB t:dsThanhToanDB) {
			if(t.getId()==101) {
				thanhToanDB.setId(t.getId());
				thanhToanDB.setTenDoi(t.getTenDoi());
				thanhToanDB.setTongTien(t.getTongTien());
				break;
			}
		}
		// kiem tra tong tien tra ve co dung khong
		assertEquals(idDoiBong, thanhToanDB.getId());
		assertEquals(tenDB,thanhToanDB.getTenDoi());
		assertEquals(total, thanhToanDB.getTongTien());
	}
	@Test
	public void getDsThanhToanDB_testChuan5() {
		// kieem tra doi bong co hop dong va tran dau do da dien ra
		ThanhToanDBDAO thanhToanDBDAO= new ThanhToanDBDAO();
		int idDoiBong=100;
		String tenDB="Becamex Bình Dương";
		BigDecimal total=new BigDecimal("18000000");
		ArrayList<ThanhToanDB> dsThanhToanDB =thanhToanDBDAO.getTongTienDB();
		ThanhToanDB thanhToanDB= new ThanhToanDB();
		for(ThanhToanDB t:dsThanhToanDB) {
			if(t.getId()==100) {
				thanhToanDB.setId(t.getId());
				thanhToanDB.setTenDoi(t.getTenDoi());
				thanhToanDB.setTongTien(t.getTongTien());
				break;
			}
		}
		assertEquals(idDoiBong, thanhToanDB.getId());
		assertEquals(tenDB,thanhToanDB.getTenDoi());
		assertEquals(total, thanhToanDB.getTongTien());
		
	}
	@Test
	public void getDsThanhToanDB_testChuan6() {
		// kieem tra doi bong co hop dong va tran dau do da dien ra
		ThanhToanDBDAO thanhToanDBDAO= new ThanhToanDBDAO();
		int idDoiBong=100;
		String tenDB="Becamex Bình Dương";
		BigDecimal total=new BigDecimal("18000000");
		ArrayList<ThanhToanDB> dsThanhToanDB =thanhToanDBDAO.getTongTienDB();
		ThanhToanDB thanhToanDB= new ThanhToanDB();
		for(ThanhToanDB t:dsThanhToanDB) {
			if(t.getId()==100) {
				thanhToanDB.setId(t.getId());
				thanhToanDB.setTenDoi(t.getTenDoi());
				thanhToanDB.setTongTien(t.getTongTien());
				break;
			}
		}
		assertEquals(idDoiBong, thanhToanDB.getId());
		assertEquals(tenDB,thanhToanDB.getTenDoi());
		assertEquals(total, thanhToanDB.getTongTien());
	}
	@Test
	public void getDsThanhToanDB_testNgoaile1() {
		// kieem tra doi bong da thanh toan tat ca hop dong roi
		ThanhToanDBDAO thanhToanDBDAO= new ThanhToanDBDAO();
		int idDoiBong=102;
		String tenDB="Becamex Bình Dương";
		BigDecimal total=new BigDecimal("18000000");
		ArrayList<ThanhToanDB> dsThanhToanDB =thanhToanDBDAO.getTongTienDB();
		ThanhToanDB thanhToanDB= new ThanhToanDB();
		for(ThanhToanDB t:dsThanhToanDB) {
			if(t.getId()==102) {
				thanhToanDB.setId(t.getId());
				thanhToanDB.setTenDoi(t.getTenDoi());
				thanhToanDB.setTongTien(t.getTongTien());
				break;
			}
		}
		// ktra
		assertEquals(thanhToanDB.getId(), 0);
	}
	@Test
	public void getDsThanhToanDB_testNgoaile2() {
		// kieem tra doi bong co tran dau chua dien ra
		ThanhToanDBDAO thanhToanDBDAO= new ThanhToanDBDAO();
		int idDoiBong=104;
		String tenDB="Hải Phòng";
		BigDecimal total=new BigDecimal("12000000");
		ArrayList<ThanhToanDB> dsThanhToanDB =thanhToanDBDAO.getTongTienDB();
		ThanhToanDB thanhToanDB= new ThanhToanDB();
		for(ThanhToanDB t:dsThanhToanDB) {
			if(t.getId()==104) {
				thanhToanDB.setId(t.getId());
				thanhToanDB.setTenDoi(t.getTenDoi());
				thanhToanDB.setTongTien(t.getTongTien());
				break;
			}
		}
		// ktra
		assertEquals(idDoiBong, thanhToanDB.getId());
		assertEquals(tenDB,thanhToanDB.getTenDoi());
		assertEquals(total, thanhToanDB.getTongTien());
		
	}
	// Hoa don
	@Test
	public void getDsThanhToanTD() {
		//kiem tra hien thi hoa don xem co dung la cac tran dau thanh toan chua
		ThanhToanTDDAO thanhToanTDDAO= new ThanhToanTDDAO();
		int idDoiBong=104;
		int idTD=126;
		BigDecimal total=new BigDecimal("2000000");
			ThanhToanTD thanhToanTD= new ThanhToanTD();
			ArrayList<ThanhToanTD> dsThanhToanTD= thanhToanTDDAO.getThanhToanTD(idDoiBong);
			for(ThanhToanTD t:dsThanhToanTD) {
				if(t.getId()==idTD) {
					thanhToanTD.setId(t.getId());
					thanhToanTD.setTongTien(t.getTongTien());
					break;
				}
			}
			// ktra
			assertEquals(idTD, thanhToanTD.getId());
			assertEquals(total, thanhToanTD.getTongTien());
	
		
	}
}
