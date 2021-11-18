package dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.HongHoc;

public class HongHocDAO extends DAO {

	public HongHocDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("deprecation")
	public boolean thenHongHoc(HongHoc hongHoc) {
		if(hongHoc == null || hongHoc.getHdon() == null || hongHoc.getLoaiHH() == null)
			return false;
		String query = "INSERT INTO tblhonghoc"
			+"  (soluong,mota,idloaihonghoc,idhoadonthanhlyxedt)" + " VALUES " + " (?, ?, ?, ?);";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, hongHoc.getSoLuong());
			preparedStatement.setString(2, hongHoc.getMota());
			preparedStatement.setInt(3, hongHoc.getLoaiHH().getId());
			preparedStatement.setInt(4, hongHoc.getHdon().getId() );
			
			return preparedStatement.executeUpdate() >0;
			
		} catch (SQLException e) {
			System.out.println(" update  thenHongHoc loi = " + e.getMessage());
		}
		return false;
	}
}
