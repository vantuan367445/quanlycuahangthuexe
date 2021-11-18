package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import model.Doitac;
import model.HDongDTChoThueXe;
import model.Xe;
import model.XeDathueDoitac;

public class DoiTacDAO extends DAO {

	public DoiTacDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Doitac getDoiTac (HDongDTChoThueXe hdongDTChoThueXe) {
		if(hdongDTChoThueXe == null ) return null;
		String query = "SELECT * FROM tbldoitac WHERE idHDongDTChoThueXe=?";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, hdongDTChoThueXe.getId());
			
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String ten = rs.getString("ten");
				String diachi = rs.getString("diachi");
				String sdt = rs.getString("sdt");
				String email = rs.getString("email");
				String cccd = rs.getString("cccd");
				String ghichu = rs.getString("ghichu");
				
				Doitac dt = 
						new Doitac(id, ten, diachi, sdt, email, cccd, ghichu, hdongDTChoThueXe);
				
				return dt;
			}
		} catch (SQLException e) {
			System.out.println("null getDoiTac 1");
			return null;
		}
		System.out.println("null getDoiTac 2");
		return null;
	}
}
