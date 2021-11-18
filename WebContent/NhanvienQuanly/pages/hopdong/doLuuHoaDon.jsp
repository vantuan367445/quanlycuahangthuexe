<%@page import="java.text.SimpleDateFormat"%>
<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<%
	try {
	HoaDonThanhLyXeDT hoaDon = (HoaDonThanhLyXeDT) session.getAttribute("HOA_DON");
	ArrayList<HongHoc> listHongHoc = (ArrayList) session.getAttribute("LIST_HONG_HOC");
	HDongDTChoThueXe hDong = (HDongDTChoThueXe) session.getAttribute("HOP_DONG");

	HoaDonThanhLyXeDTDAO hDonDAO = new HoaDonThanhLyXeDTDAO();
	int idhDon = hDonDAO.thenHdonThanhLyXeDT(hoaDon);

	HDongDoTChoThueXeDAO hDongDAO = new HDongDoTChoThueXeDAO();
	boolean check1 = hDongDAO.capnhatHDongDTChoThueXe(hDong);

	if (idhDon != -1 && check1) {
		hoaDon.setId(idhDon);

		boolean check2 = true;

		HongHocDAO hhDAO = new HongHocDAO();
		for (HongHoc hh : listHongHoc) {
	hh.setHdon(hoaDon);
	check2 = hhDAO.thenHongHoc(hh);
	if (!check2) {
		break;
	}
		}
		if (check2) {
	out.println("<script type=\"text/javascript\">");
	out.println("alert('Thanh toán thành công');");
	out.println("location='../../gdChinhNVQL.jsp?';");
	out.println("</script>");
	//response.sendRedirect("../../gdChinhNVQL.jsp?1");
		}

	} else
		response.sendRedirect("gdHoaDonTl.jsp?err=1");

} catch (Exception e) {
	response.sendRedirect("gdHoaDonTl.jsp?err=1");
}
%>