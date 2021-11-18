package test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import dao.XeDAO;
import model.Xe;

class XeDAOTest {
	XeDAO dao = new XeDAO();
	
	@Test
	void getXe_IdKhongTonTai() {
		Xe xe  = dao.getXe(-10);
		assertNull(xe);
	}
	@Test
	void getXe_ThanhCong() {
		Xe xe  = dao.getXe(1);
		assertNotNull(xe);
	}

}
