package model;

import java.util.Date;

public class HDongDTChoThueXe {
	private int id;
	private Date ngaybd;
	private Date ngaykt;
	private int trangthai;
	private String ghichu;
	
	
	public HDongDTChoThueXe() {
		super();
		
	}
	
	
	public HDongDTChoThueXe(int id, Date ngaybd, Date ngaykt, int trangthai, String ghichu) {
		super();
		this.id = id;
		this.ngaybd = ngaybd;
		this.ngaykt = ngaykt;
		this.trangthai = trangthai;
		this.ghichu = ghichu;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getNgaybd() {
		return ngaybd;
	}
	public void setNgaybd(Date ngaybd) {
		this.ngaybd = ngaybd;
	}
	public Date getNgaykt() {
		return ngaykt;
	}
	public void setNgaykt(Date ngaykt) {
		this.ngaykt = ngaykt;
	}
	public int getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}
	public String getGhichu() {
		return ghichu;
	}
	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}
	
	
	

}
