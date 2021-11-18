package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import model.Doitac;
import model.HDongDTChoThueXe;
import model.LoaiHongHoc;
import model.Xe;
import model.XeDathueDoitac;

public class LoaiHongHocDAO extends DAO {

	public LoaiHongHocDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ArrayList<LoaiHongHoc> getLoaiHongHoc () {
		ArrayList<LoaiHongHoc> list = new ArrayList<LoaiHongHoc>();
		String query = "SELECT * FROM tblloaihonghoc";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = con.prepareStatement(query);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String loai = rs.getString("loai");
				String mota = rs.getString("mota");
				float gia = rs.getFloat("gia");
				
				LoaiHongHoc lhh = new LoaiHongHoc(id, loai, mota, gia);
				list.add(lhh);
			}
			return list;
		} catch (SQLException e) {
			return list;
		}
	}
}
