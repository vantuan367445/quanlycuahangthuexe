package test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;

import org.junit.jupiter.api.Test;

import dao.LoaiHongHocDAO;
import model.LoaiHongHoc;

class LoaiHongHocDAOTest {
	LoaiHongHocDAO dao = new LoaiHongHocDAO();
	@Test
	void getThanhCong() {
		ArrayList<LoaiHongHoc> list = dao.getLoaiHongHoc();
		assertNotNull(list);
	}

}
