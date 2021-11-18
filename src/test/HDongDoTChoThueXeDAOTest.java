package test;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.jupiter.api.Test;

import dao.HDongDoTChoThueXeDAO;
import model.HDongDTChoThueXe;

class HDongDoTChoThueXeDAOTest {
	HDongDoTChoThueXeDAO hopDongDAO = new HDongDoTChoThueXeDAO();
	
	@Test
	void getDsHopDong_TrangThaiKhongTonTai() {
		ArrayList<HDongDTChoThueXe> list = hopDongDAO.getDsHopDong(-100);
		assertEquals(list.size(), 0);
	}
	@Test
	void getDsHopDong_ThanhCong() {
		ArrayList<HDongDTChoThueXe> list = hopDongDAO.getDsHopDong(1);
		assertTrue(list.size() > 0);
	}

	@Test
	void capnhatHDongDTChoThueXe_KhongTonTaiID() {
		
		
		try {
			hopDongDAO.con.setAutoCommit(false);
			
			HDongDTChoThueXe hdong = new HDongDTChoThueXe();
			hdong.setId(-100);
			boolean check = hopDongDAO.capnhatHDongDTChoThueXe(hdong);
			assertFalse(check);
			
			
			hopDongDAO.con.rollback();
			hopDongDAO.con.setAutoCommit(true);
		} catch (SQLException e) {
			System.out.println("err = " + e.getMessage());
			e.printStackTrace();
		}
	}
	@Test
	void capnhatHDongDTChoThueXe_hDongNull() {
		
		try {
			hopDongDAO.con.setAutoCommit(false);
			
			boolean check = hopDongDAO.capnhatHDongDTChoThueXe(null);
			assertFalse(check);
			
			
			hopDongDAO.con.rollback();
			hopDongDAO.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Test
	void capnhatHDongDTChoThueXe_iDNull() {
		
		
		try {
			hopDongDAO.con.setAutoCommit(false);
			
			HDongDTChoThueXe hdong = new HDongDTChoThueXe();
			boolean check = hopDongDAO.capnhatHDongDTChoThueXe(hdong);
			assertFalse(check);
			
			hopDongDAO.con.rollback();
			hopDongDAO.con.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	@Test
	void capnhatHDongDTChoThueXe_ThanhCong() {
	
		
		try {
			hopDongDAO.con.setAutoCommit(false);
			
			HDongDTChoThueXe hdong = new HDongDTChoThueXe();
			hdong.setId(1);
			hdong.setTrangthai(1);
			boolean check = hopDongDAO.capnhatHDongDTChoThueXe(hdong);
			assertTrue(check);
			
			hopDongDAO.con.rollback();
			hopDongDAO.con.setAutoCommit(true);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
}
