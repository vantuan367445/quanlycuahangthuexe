package model;

public class LoaiHongHoc {
	private int id;
	private String loai;
	private String mota;
	private float gia;
	
	
	
	public LoaiHongHoc(int id, String loai, String mota, float gia) {
		super();
		this.id = id;
		this.loai = loai;
		this.mota = mota;
		this.gia = gia;
	}
	public LoaiHongHoc(String loai, String mota, float gia) {
		super();
		this.loai = loai;
		this.mota = mota;
		this.gia = gia;
	}
	public LoaiHongHoc() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoai() {
		return loai;
	}
	public void setLoai(String loai) {
		this.loai = loai;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public float getGia() {
		return gia;
	}
	public void setGia(float gia) {
		this.gia = gia;
	}
	
	
}
