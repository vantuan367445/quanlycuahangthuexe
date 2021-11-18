package model;

import java.util.Date;

public class Nhanvien {
	private int id;
	private String tendn;
	private String matkhau;
	private String ten;
	private Date ngaysinh;
	private String diachi;
	private String email;
	private String sdt;
	private int vitri;
	private String ghichu;

	public Nhanvien() {
		super();
	}

	public Nhanvien(String tendn, String matkhau) {
		super();
		this.tendn = tendn;
		this.matkhau = matkhau;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTendn() {
		return tendn;
	}

	public void setTendn(String tendn) {
		this.tendn = tendn;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public Date getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public int getVitri() {
		return vitri;
	}

	public void setVitri(int vitri) {
		this.vitri = vitri;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}
	
	

	

}
