package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import model.Xe;

public class XeDAO extends DAO {

	public XeDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Xe getXe(int idXe) {
		String query = "SELECT * FROM tblxe WHERE id=?";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, idXe);
			
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				String ten = rs.getString("ten");
				String bienso = rs.getString("bienso");
				String dongxe = rs.getString("dongxe");
				String doixe = rs.getString("doixe");
				String mota = rs.getString("mota");
				Xe xe = new Xe(idXe, ten, bienso, dongxe, doixe, mota);
				return xe;
			}
		} catch (SQLException e) {
			return null;
		}
		return null;
		
	}
		
}
