package test;

import org.junit.Assert;
import org.junit.jupiter.api.Test;

import dao.DoiTacDAO;
import model.Doitac;
import model.HDongDTChoThueXe;

class DoiTacDAOTest {
	DoiTacDAO dtDAO = new DoiTacDAO();
	
	@Test
	void getDoiTac_HDongDTChoThueXeNull() {
		Doitac dt = dtDAO.getDoiTac(null);
		Assert.assertNull(dt);

	}
	@Test
	void getDoiTac_IDHDongDTChoThueXeNull() {
		HDongDTChoThueXe hd = new HDongDTChoThueXe();
		Doitac dt = dtDAO.getDoiTac(hd);
		Assert.assertNull(dt);

	}
	@Test
	void getDoiTac_KhongTonTaiID() {
		HDongDTChoThueXe hd = new HDongDTChoThueXe();
		hd.setId(100);
		Doitac dt = dtDAO.getDoiTac(hd);
		Assert.assertNull(dt);

	}
	@Test
	void getDoiTac_ThanhCong() {
		HDongDTChoThueXe hd = new HDongDTChoThueXe();
		hd.setId(1);
		Doitac dt = dtDAO.getDoiTac(hd);
		Assert.assertNotNull(dt);

	}
}
