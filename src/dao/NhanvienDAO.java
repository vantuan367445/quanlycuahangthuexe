package dao;

import java.sql.ResultSet;

import com.mysql.jdbc.CallableStatement;

import model.Nhanvien;

public class NhanvienDAO extends DAO {

	public NhanvienDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public boolean kiemtraDangnhap(Nhanvien tv) {
		boolean kq = false;
		if(tv == null) return false;
		if (tv.getTendn().contains("true") 
				|| tv.getTendn().contains("=")
				|| tv.getMatkhau().contains("true")
				|| tv.getMatkhau().contains("="))
			return false;
		String sql = "{call kiemtraDN(?,?)}"; // su dung stored procedure
		try {
			CallableStatement cs = (CallableStatement) con.prepareCall(sql);
			cs.setString(1, tv.getTendn());
			cs.setString(2, tv.getMatkhau());
			ResultSet rs = cs.executeQuery();

			if (rs.next()) {
				tv.setId(rs.getInt("id"));
				tv.setVitri(rs.getInt("vitri"));
				tv.setTen(rs.getString("ten"));
				tv.setNgaysinh(rs.getDate("ngaysinh"));
				tv.setEmail(rs.getString("email"));
				tv.setSdt(rs.getString("sdt"));

				kq = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = false;
		}
		return kq;
	}
}
