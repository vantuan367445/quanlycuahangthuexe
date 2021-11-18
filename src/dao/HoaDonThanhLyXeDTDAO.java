package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

import model.HoaDonThanhLyXeDT;

public class HoaDonThanhLyXeDTDAO extends DAO {

	public HoaDonThanhLyXeDTDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("deprecation")
	public int thenHdonThanhLyXeDT(HoaDonThanhLyXeDT hdon) {
		if(hdon == null 
				||hdon.gethDongDTChoThueXe() == null ) return -1;
		String query = "INSERT INTO tblhdonthanhlyxedt"
			+"  (ngayxuat,thanhtien,ghichu,idHDongDTChoThueXe)" + " VALUES " + " (?, ?, ? , ?);";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
			Date ngayxuat = new Date(hdon.getNgayxuat().getTime());
			//Date ngayxuat = 
				//	new Date(hdon.getNgayxuat().getYear(), hdon.getNgayxuat().getMonth(), hdon.getNgayxuat().getDay());
			preparedStatement.setDate(1, ngayxuat);
			preparedStatement.setFloat(2, hdon.getThanhtien());
			preparedStatement.setString(3, hdon.getGhichu());
			preparedStatement.setInt(4, hdon.gethDongDTChoThueXe().getId());
			
			if(preparedStatement.executeUpdate() > 0) {
				ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
				if (generatedKeys.next()) {
					int id = generatedKeys.getInt(1);
					System.out.println("thenHdonThanhLyXeDT id = " + id);
					return id;
	            }
			}
			System.out.println("thenHdonThanhLyXeDT id1 = -1" );
			return  -1;
			
		} catch (SQLException e) {
			System.out.println("thenHdonThanhLyXeDT id1 = -1" );
			System.out.println(" update  thenHdonThanhLyXeDT loi = " + e.getMessage());
		}
		return -1;
		
	}
}
