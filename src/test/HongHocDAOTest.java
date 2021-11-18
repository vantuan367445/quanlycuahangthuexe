package test;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;
import java.util.Date;

import org.junit.jupiter.api.Test;

import dao.HongHocDAO;
import model.HDongDTChoThueXe;
import model.HoaDonThanhLyXeDT;
import model.HongHoc;
import model.LoaiHongHoc;

class HongHocDAOTest {
	HongHocDAO dao = new HongHocDAO();
	
	@Test
	void thenHongHoc_TruyenNull() {
		try {
			dao.con.setAutoCommit(false);
			boolean check = dao.thenHongHoc(null);
			assertFalse(check);
			
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	void thenHongHoc_TruyenLoạiHongHocNull() {
		try {
			dao.con.setAutoCommit(false);
			HDongDTChoThueXe hDongDTChoThueXe = new HDongDTChoThueXe(1, new Date(),  new Date(), 1, "test");
			HoaDonThanhLyXeDT hdon = 
					new HoaDonThanhLyXeDT(new Date(), 100, "test",hDongDTChoThueXe );
			
			HongHoc hongHoc = new HongHoc(1, "test", hdon, null);
			boolean check = dao.thenHongHoc( hongHoc);
			assertFalse(check);
			
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Test
	void thenHongHoc_TruyenHoaDonNull() {
		try {
			dao.con.setAutoCommit(false);
			LoaiHongHoc lhh = new LoaiHongHoc(1, "Loai1", "test", 100);
			HongHoc hongHoc = new HongHoc(1, "test", null, lhh);
			boolean check = dao.thenHongHoc(hongHoc);
			assertFalse(check);
			
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Test
	void thenHongHoc_IdLoaiHongHocKhongTonTai() {
		try {
			dao.con.setAutoCommit(false);
			
			HDongDTChoThueXe hDongDTChoThueXe = new HDongDTChoThueXe(0, new Date(),  new Date(), 1, "test");
			HoaDonThanhLyXeDT hdon = 
					new HoaDonThanhLyXeDT(new Date(), 100, "test",hDongDTChoThueXe );
			
			
			LoaiHongHoc lhh = new LoaiHongHoc(100, "Loai1", "test", 100);
			HongHoc hongHoc = new HongHoc(1, "test", hdon, lhh);
			boolean check = dao.thenHongHoc(hongHoc);
			assertFalse(check);
			
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Test
	void thenHongHoc_IdhDonKhongTonTai() {
		try {
			dao.con.setAutoCommit(false);
			
			HDongDTChoThueXe hDongDTChoThueXe = new HDongDTChoThueXe(0, new Date(),  new Date(), 1, "test");
			HoaDonThanhLyXeDT hdon = 
					new HoaDonThanhLyXeDT(100,new Date(), 0, "test",hDongDTChoThueXe );
			
			
			LoaiHongHoc lhh = new LoaiHongHoc(0, "Loai1", "test", 100);
			HongHoc hongHoc = new HongHoc(1, "test", hdon, lhh);
			boolean check = dao.thenHongHoc(hongHoc);
			assertFalse(check);
			
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	void thenHongHoc_ThanhCong() {
		try {
			dao.con.setAutoCommit(false);
			
			HDongDTChoThueXe hDongDTChoThueXe = new HDongDTChoThueXe(1, new Date(),  new Date(), 1, "test");
			HoaDonThanhLyXeDT hdon = 
					new HoaDonThanhLyXeDT(6,new Date(), 0, "test",hDongDTChoThueXe );
			
			
			LoaiHongHoc lhh = new LoaiHongHoc(1, "Loai1", "test", 100);
			HongHoc hongHoc = new HongHoc(10, "test", hdon, lhh);
			boolean check = dao.thenHongHoc(hongHoc);
			assertFalse(!check);
			
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
