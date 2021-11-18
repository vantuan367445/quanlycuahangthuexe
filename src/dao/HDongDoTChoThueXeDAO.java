package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.CallableStatement;

import model.Doitac;
import model.HDongDTChoThueXe;
import model.Nhanvien;
import model.Xe;

public class HDongDoTChoThueXeDAO extends DAO {

	public HDongDoTChoThueXeDAO() {
		super();
	}

	public ArrayList<HDongDTChoThueXe> getDsHopDong(int trangthai){
		ArrayList<HDongDTChoThueXe> list  = new ArrayList<HDongDTChoThueXe>();
		String query = "SELECT * FROM tblhdongdtchothuexe WHERE trangthai=?";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, trangthai);
			
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				
				int id = rs.getInt("id");
				Date ngaybd = rs.getDate("ngaybd");
				Date ngaykt = rs.getDate("ngaykt");
				String ghichu = rs.getString("ghichu");
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				
				try {
					HDongDTChoThueXe hdong = new HDongDTChoThueXe(id, 
							sdf.parse(sdf.format(ngaybd)),
							sdf.parse(sdf.format(ngaykt)), 
							trangthai, ghichu);
					list.add(hdong);
				} catch (ParseException e) {
					System.out.println("loi1 = " + e.getMessage());
					e.printStackTrace();
				}
				
				
			}
			
			return list;
		} catch (SQLException e) {
			System.out.println("loi2 = " + e.getMessage());
			return list;
		}
	}
	public boolean capnhatHDongDTChoThueXe(HDongDTChoThueXe hDong){
		if(hDong == null) return false;
		String query = "UPDATE tblhdongdtchothuexe set trangthai = ? WHERE id = ?;";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, hDong.getTrangthai());
			preparedStatement.setInt(2, hDong.getId());
			
			return preparedStatement.executeUpdate() > 0;
			
		} catch (SQLException e) {
			System.out.println("loi2 = " + e.getMessage());
		}
		return false;
	}

}
