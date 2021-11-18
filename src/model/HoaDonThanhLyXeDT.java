package model;

import java.util.Date;

public class HoaDonThanhLyXeDT {
	private  int id;
	private Date ngayxuat;
	private float thanhtien;
	private String ghichu;
	
	private HDongDTChoThueXe hDongDTChoThueXe;

	
	
	
	public HoaDonThanhLyXeDT(int id, Date ngayxuat, float thanhtien, String ghichu, HDongDTChoThueXe hDongDTChoThueXe) {
		super();
		this.id = id;
		this.ngayxuat = ngayxuat;
		this.thanhtien = thanhtien;
		this.ghichu = ghichu;
		this.hDongDTChoThueXe = hDongDTChoThueXe;
	}
	public HoaDonThanhLyXeDT(Date ngayxuat, float thanhtien, String ghichu, HDongDTChoThueXe hDongDTChoThueXe) {
		super();
		this.ngayxuat = ngayxuat;
		this.thanhtien = thanhtien;
		this.ghichu = ghichu;
		this.hDongDTChoThueXe = hDongDTChoThueXe;
	}
	public HoaDonThanhLyXeDT() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getNgayxuat() {
		return ngayxuat;
	}

	public void setNgayxuat(Date ngayxuat) {
		this.ngayxuat = ngayxuat;
	}

	public float getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(float thanhtien) {
		this.thanhtien = thanhtien;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

	public HDongDTChoThueXe gethDongDTChoThueXe() {
		return hDongDTChoThueXe;
	}

	public void sethDongDTChoThueXe(HDongDTChoThueXe hDongDTChoThueXe) {
		this.hDongDTChoThueXe = hDongDTChoThueXe;
	}
	
	
}
