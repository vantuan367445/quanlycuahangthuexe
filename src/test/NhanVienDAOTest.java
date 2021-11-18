package test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.Assert;
import org.junit.jupiter.api.Test;

import dao.NhanvienDAO;
import model.Nhanvien;

class NhanVienDAOTest {
	NhanvienDAO nvDAO = new NhanvienDAO();

	@Test
	void kiemtraDangnhap_NhanVienNull() {
		boolean check = nvDAO.kiemtraDangnhap(null);
		Assert.assertFalse(check);
	}
	@Test
	void kiemtraDangnhap_TenDNDung_MKSai() {
		Nhanvien nv = new Nhanvien("tuan123", "0123");
		boolean check = nvDAO.kiemtraDangnhap(nv);
		Assert.assertFalse(check);
	}
	@Test
	void kiemtraDangnhap_TenDNSai_MKDung() {
		Nhanvien nv = new Nhanvien("0123", "tuan123");
		boolean check = nvDAO.kiemtraDangnhap(nv);
		Assert.assertFalse(check);
	}
	@Test
	void kiemtraDangnhap_ThanhCong() {
		Nhanvien nv = new Nhanvien("tuan123", "tuan123");
		boolean check = nvDAO.kiemtraDangnhap(nv);
		Assert.assertFalse(!check);
	}

}
