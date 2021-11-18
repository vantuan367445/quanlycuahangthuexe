package test;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;
import java.util.Date;

import org.junit.jupiter.api.Test;

import dao.HoaDonThanhLyXeDTDAO;
import model.HDongDTChoThueXe;
import model.HoaDonThanhLyXeDT;

class HoaDonThanhLyXeDTDAOTest {
	HoaDonThanhLyXeDTDAO dao = new HoaDonThanhLyXeDTDAO();
	
	
	@Test
	void themHdonThanhLyXeDT_HDongNull() {
		
		try {
			dao.con.setAutoCommit(false);
			
			int value = dao.thenHdonThanhLyXeDT(null);
			assertEquals(-1, value);
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	@Test
	void themHdonThanhLyXeDT_HDongDTChoThueXeNull() {
		
		try {
			dao.con.setAutoCommit(false);
			
			HoaDonThanhLyXeDT hdon = new HoaDonThanhLyXeDT();
			hdon.sethDongDTChoThueXe(null);
			int value = dao.thenHdonThanhLyXeDT(hdon);
			assertEquals(-1, value);
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	@Test
	void themHdonThanhLyXeDT_IdHDongDTChoThueXeKhongTTai() {
		
		try {
			dao.con.setAutoCommit(false);
			HDongDTChoThueXe hDong = new HDongDTChoThueXe();
			hDong.setId(100);
			HoaDonThanhLyXeDT hdon = new HoaDonThanhLyXeDT(new Date(),100,"test",hDong);
			hdon.sethDongDTChoThueXe(hDong);
			
			int value = dao.thenHdonThanhLyXeDT(hdon);
			assertEquals(-1, value);
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	@Test
	void themHdonThanhLyXeDT_ThanhCong() {
		
		try {
			dao.con.setAutoCommit(false);
			HDongDTChoThueXe hDong = new HDongDTChoThueXe();
			hDong.setId(1);
			HoaDonThanhLyXeDT hdon = new HoaDonThanhLyXeDT(new Date(),100,"test",hDong);
			hdon.sethDongDTChoThueXe(hDong);
			
			int value = dao.thenHdonThanhLyXeDT(hdon);
			assertTrue(value > 0);
			
			dao.con.rollback();
			dao.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
