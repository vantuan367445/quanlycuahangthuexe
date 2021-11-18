package model;

public class Doitac {
	private int id;;
	private String ten;
	private String diachi;
	private String sdt;
	private String email;
	private String cccd;
	private String ghichu;
	
	private HDongDTChoThueXe hdongDTChoThueXe;

	public Doitac() {
		super();
	}

	public Doitac(int id, String ten, String diachi, String sdt, String email, String cccd, String ghichu,
			HDongDTChoThueXe hdongDTChoThueXe) {
		super();
		this.id = id;
		this.ten = ten;
		this.diachi = diachi;
		this.sdt = sdt;
		this.email = email;
		this.cccd = cccd;
		this.ghichu = ghichu;
		this.hdongDTChoThueXe = hdongDTChoThueXe;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCccd() {
		return cccd;
	}

	public void setCccd(String cccd) {
		this.cccd = cccd;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

	public HDongDTChoThueXe getHdongDTChoThueXe() {
		return hdongDTChoThueXe;
	}

	public void setHdongDTChoThueXe(HDongDTChoThueXe hdongDTChoThueXe) {
		this.hdongDTChoThueXe = hdongDTChoThueXe;
	}

	

}
