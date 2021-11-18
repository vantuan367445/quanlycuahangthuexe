package model;

import java.util.Date;


public class XeDathueDoitac {
	private int id;
	private Date ngaythue;
	private Date ngaytra;
	private float gia;
	
	private HDongDTChoThueXe hdThueXe;
	private Xe xe;

	public XeDathueDoitac() {
		super();
	}
	
	

	public XeDathueDoitac(int id, Date ngaythue, Date ngaytra,
			float gia, HDongDTChoThueXe hdThueXe,Xe xe) {
		super();
		this.id = id;
		this.ngaythue = ngaythue;
		this.ngaytra = ngaytra;
		this.gia = gia;
		this.hdThueXe = hdThueXe;
		this.xe = xe;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getNgaythue() {
		return ngaythue;
	}

	public void setNgaythue(Date ngaythue) {
		this.ngaythue = ngaythue;
	}

	public Date getNgaytra() {
		return ngaytra;
	}

	public void setNgaytra(Date ngaytra) {
		this.ngaytra = ngaytra;
	}

	public float getGia() {
		return gia;
	}

	public void setGia(float gia) {
		this.gia = gia;
	}

	public HDongDTChoThueXe getHdThueXe() {
		return hdThueXe;
	}

	public void setHdThueXe(HDongDTChoThueXe hdThueXe) {
		this.hdThueXe = hdThueXe;
	}



	public Xe getXe() {
		return xe;
	}



	public void setXe(Xe xe) {
		this.xe = xe;
	}

	

}
