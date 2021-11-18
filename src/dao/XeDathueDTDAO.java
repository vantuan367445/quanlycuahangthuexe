package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import model.HDongDTChoThueXe;
import model.Xe;
import model.XeDathueDoitac;

public class XeDathueDTDAO extends DAO {

	public XeDathueDTDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public XeDathueDoitac getXeDaThueDT(HDongDTChoThueXe hDongDTChoThueXe) {
		if(hDongDTChoThueXe == null ) return null;
		String query = "SELECT * FROM tblxedathuedt WHERE idHDongDTChoThueXe=?";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, hDongDTChoThueXe.getId());
			
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				Date ngaythue = rs.getDate("ngaythue");
				Date ngaytra = rs.getDate("ngaytra");
				float gia = rs.getFloat("gia");
				
				int idXe = rs.getInt("idxe");
				
				Xe xe = new XeDAO().getXe(idXe);
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				XeDathueDoitac xeDaTHueDT;
				try {
					xeDaTHueDT = new XeDathueDoitac(id, sdf.parse(sdf.format(ngaythue)),
							sdf.parse(sdf.format(ngaytra)), gia, hDongDTChoThueXe, xe);
				} catch (ParseException e) {
					System.out.println("null getXeDaThueDT");
					return null;
				}
				
				return xeDaTHueDT;
			}
		} catch (SQLException e) {
			System.out.println("null getXeDaThueDT");
			return null;
		}
		return null;
	}
}
