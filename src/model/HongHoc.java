package model;

import java.util.Date;

public class HongHoc {
	private int id;
	private int soLuong;
	private String mota;
	private HoaDonThanhLyXeDT hdon;
	private LoaiHongHoc loaiHH;
	
	
	
	public HongHoc() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HongHoc(int id, int soLuong, String mota, HoaDonThanhLyXeDT hdon,LoaiHongHoc loaiHH) {
		super();
		this.id = id;
		this.soLuong = soLuong;
		this.mota = mota;
		this.hdon = hdon;
		this.loaiHH = loaiHH;
	}
	public HongHoc( int soLuong, String mota, HoaDonThanhLyXeDT hdon,LoaiHongHoc loaiHH) {
		super();
		this.soLuong = soLuong;
		this.mota = mota;
		this.hdon = hdon;
		this.loaiHH = loaiHH;
	}
	public HongHoc( int soLuong, String mota, LoaiHongHoc loaiHH) {
		super();
		this.soLuong = soLuong;
		this.mota = mota;
		this.loaiHH = loaiHH;
	}
	
	
	public LoaiHongHoc getLoaiHH() {
		return loaiHH;
	}
	public void setLoaiHH(LoaiHongHoc loaiHH) {
		this.loaiHH = loaiHH;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public HoaDonThanhLyXeDT getHdon() {
		return hdon;
	}
	public void setHdon(HoaDonThanhLyXeDT hdon) {
		this.hdon = hdon;
	}
	
	
	
}
