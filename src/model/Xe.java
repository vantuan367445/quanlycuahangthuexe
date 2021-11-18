package model;

public class Xe {
	private int id;
	private String ten;
	private String bienso;
	private String dongxe;
	private String doixe;
	private String mota;
	
	private CuaHang cuaHang;
	
	public Xe() {
		super();
	}
	
	

	public Xe(int id, String ten, String bienso, String dongxe, String doixe, String mota) {
		super();
		this.id = id;
		this.ten = ten;
		this.bienso = bienso;
		this.dongxe = dongxe;
		this.doixe = doixe;
		this.mota = mota;
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

	public String getBienso() {
		return bienso;
	}

	public void setBienso(String bienso) {
		this.bienso = bienso;
	}

	public String getDongxe() {
		return dongxe;
	}

	public void setDongxe(String dongxe) {
		this.dongxe = dongxe;
	}

	public String getDoixe() {
		return doixe;
	}

	public void setDoixe(String doixe) {
		this.doixe = doixe;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public CuaHang getCuaHang() {
		return cuaHang;
	}

	public void setCuaHang(CuaHang cuaHang) {
		this.cuaHang = cuaHang;
	}

	

}
