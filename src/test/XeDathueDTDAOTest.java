package test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Date;

import org.junit.jupiter.api.Test;

import dao.XeDathueDTDAO;
import model.HDongDTChoThueXe;
import model.XeDathueDoitac;

class XeDathueDTDAOTest {
	XeDathueDTDAO dao = new XeDathueDTDAO();
	
	@Test
	void getXeDaThueDT_hDongNull() {
		XeDathueDoitac xeDt = dao.getXeDaThueDT(null);
		assertNull(xeDt);
	}
	@Test
	void getXeDaThueDT_IDhDongKhongTonTai() {
		
		HDongDTChoThueXe hdong = new HDongDTChoThueXe(-1, new Date(), new Date(), 1, "tes");
		XeDathueDoitac xeDt = dao.getXeDaThueDT(hdong);
		assertNull(xeDt);
	}
	@Test
	void getXeDaThueDT_ThanhCong() {
		
		HDongDTChoThueXe hdong = new HDongDTChoThueXe(1, new Date(), new Date(), 1, "tes");
		XeDathueDoitac xeDt = dao.getXeDaThueDT(hdong);
		assertNotNull(xeDt);
	}
}
