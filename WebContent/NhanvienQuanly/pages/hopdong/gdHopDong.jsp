<%@page import="java.sql.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.time.Duration"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản lý thuê xe ô tô</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="../../vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet" href="../../css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="../../images/favicon.png" />
<style>
.btn1 {
	padding: 0.875rem 1.25rem;
	font-size: 0.75rem;
}
</style>
<%@include file="../../../header.jsp"%>
</head>

<body>
	<%
		int stt = Integer.parseInt(request.getParameter("stt"));
	ArrayList<HDongDTChoThueXe> hds = (ArrayList<HDongDTChoThueXe>) session.getAttribute("danhsachHD");
	HDongDTChoThueXe hd = hds.get(stt);

	session.setAttribute("thanhly", hd);
	Doitac dt = new DoiTacDAO().getDoiTac(hd);
	XeDathueDoitac xeDaThueDT = new XeDathueDTDAO().getXeDaThueDT(hd);
	Xe xe = xeDaThueDT.getXe();

	float gia = 0;
	if (xeDaThueDT.getGia() % (int) xeDaThueDT.getGia() == 0) {
		gia = (int) xeDaThueDT.getGia();
	} else
		gia = xeDaThueDT.getGia();
	SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
	String ngaybd = sdf.format(hd.getNgaybd());
	String ngaytra = sdf.format(xeDaThueDT.getNgaytra());
	long diff = xeDaThueDT.getNgaytra().getTime() - hd.getNgaybd().getTime();
	diff = (diff / (1000 * 60 * 60 * 24));
	%>
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<!-- partial:partials/_navbar.html -->
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo mr-5" href="../../gdChinhNVQL.jsp">PTITer<a>
						<a class="navbar-brand brand-logo-mini"
						href="../../gdChinhNVQL.jsp">PTITer</a>
			</div>
			<div
				class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
			</div>
		</nav>
		<div class="container-fluid page-body-wrapper">
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link"
						href="gdChonHD.jsp">Quay lại</a></li>
				</ul>
			</nav>
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Thông tin hợp đồng đối tác cho thuê
										xe</h4>

									<div class="row">
										<div class="col-5">
											<p class="card-description">Thông tin đối tác</p>
										</div>

										<div class="col-7">
											<p class="card-description">Thông tin hợp đồng</p>
										</div>
									</div>

									<div class="row">
										<div class="col-5">
											<div class="infor"
												style="width: 100%; border: 1px solid #00000021;">
												<ul class="list-group">
													<li class="list-group-item"
														style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
														<div class="row">
															<div class="col-4">Mã</div>
															<div class="col-8">
																<div class="col-8" style="border-style: ridge;"><%=dt.getId()%></div>
															</div>
														</div>
													</li>
													<li class="list-group-item"
														style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
														<div class="row">
															<div class="col-4">Họ và tên</div>
															<div class="col-8">
																<div class="col-8" style="border-style: ridge;"><%=dt.getTen()%></div>
															</div>
														</div>
													</li>
													<li class="list-group-item"
														style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
														<div class="row">
															<div class="col-4">Địa chỉ</div>
															<div class="col-8">
																<div class="col-8" style="border-style: ridge;"><%=dt.getDiachi()%></div>
															</div>
														</div>
													</li>
													<li class="list-group-item"
														style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
														<div class="row">
															<div class="col-4">Điện thoại</div>
															<div class="col-8">
																<div class="col-8" style="border-style: ridge;"><%=dt.getSdt()%></div>
															</div>
														</div>
													</li>
												</ul>
											</div>
										</div>

										<div class="col-7">
											<div class="infor"
												style="width: 100%; border: 1px solid #00000021;">
												<ul class="list-group">
													<li class="list-group-item"
														style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
														<div class="row">
															<div class="col-4">Ngày thuê</div>
															<div class="col-8">
																<div class="col-8" style="border-style: ridge;"><%=ngaybd%></div>
															</div>
														</div>
													</li>
													<li class="list-group-item"
														style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
														<div class="row">
															<div class="col-4">Ngày trả</div>
															<div class="col-8">
																<div class="col-8" style="border-style: ridge;"><%=ngaytra%></div>
															</div>
														</div>
													</li>

													<li class="list-group-item"
														style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
														<div class="row">
															<div class="col-4">Đơn giá ký gửi(vnd/ngày)</div>
															<div class="col-8">
																<%
																	DecimalFormat formatter = new DecimalFormat("###,###,###");
																String giaText = formatter.format(gia);
																%>
																<div class="col-8" style="border-style: ridge;"><%=giaText%></div>
															</div>
														</div>
													</li>
													<li class="list-group-item"
														style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
														<div class="row">
															<div class="col-4">Tổng tiền</div>
															<div class="col-8">
																<%
																	String tongtien = formatter.format(diff * gia);
																%>
																<div class="col-8" style="border-style: ridge;"><%=tongtien%></div>
															</div>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>




									<p class="card-description" style="margin-top: 30px">Thông
										tin xe:</p>
									<div class="table-responsive pt-3">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>Tên xe</th>
													<th>Biển số</th>
													<th>Dòng xe</th>
													<th>Đời</th>
													<th>Mô tả</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><%=xe.getTen()%></td>
													<td><%=xe.getBienso()%></td>
													<td><%=xe.getDongxe()%></td>
													<td><%=xe.getDoixe()%></td>
													<td><%=xe.getMota()%></td>

												</tr>
											</tbody>
										</table>
									</div>
									<p class="card-description" style="margin-top: 30px">Thông
										tin hỏng hóc:</p>
									<%
										float tongDenBu = 0;
									ArrayList<HongHoc> listHongHoc = new ArrayList();
									%>
									<div class="table-responsive pt-3">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>STT</th>
													<th>Loại</th>
													<th>Giá</th>
													<th>Mô tả</th>
													<th>Số lượng</th>
												</tr>
											</thead>
											<tbody>
												<%
													LoaiHongHocDAO dao = new LoaiHongHocDAO();
													ArrayList<LoaiHongHoc> list = dao.getLoaiHongHoc();
												for (int i = 0; i < list.size(); i++) {
												%>
												<tr>
													<%
														LoaiHongHoc lhh = list.get(i);
													String giaHH = formatter.format(lhh.getGia());
													int soLuong = 2;
													tongDenBu = tongDenBu + lhh.getGia() * soLuong;

													listHongHoc.add(new HongHoc(soLuong, "hong hoc loai " + lhh.getLoai(), lhh));
													%>
													<td><%=i + 1%></td>
													<td><%=lhh.getLoai()%></td>
													<td><%=giaHH%></td>
													<td><%=lhh.getMota()%></td>
													<td><%=soLuong%></td>

												</tr>
												<%
													}
												%>
											</tbody>
										</table>
									</div>
									<div style="margin-top: 30px">
										Tổng tiền đền bù:
										<%=formatter.format(tongDenBu)%></div>
									<div style="margin-top: 15px">
										Tổng tiền thanh toán:
										<%=formatter.format(tongDenBu + gia * diff)%></div>
									<div style="margin-top: 15px">Đơn vị tính: VND</div>

									<%
										Date date = new Date(System.currentTimeMillis());
									HoaDonThanhLyXeDT hoaDon = new HoaDonThanhLyXeDT(date, tongDenBu + gia * diff, "da thanh toan", hd);
										for(HongHoc hh : listHongHoc){
											hh.setHdon(hoaDon);
											System.out.println("idLoaihh = " + hh.getLoaiHH().getId());
										}
										hd.setTrangthai(0);
										session.setAttribute("HOA_DON", hoaDon);
										session.setAttribute("LIST_HONG_HOC", listHongHoc);
										session.setAttribute("HOP_DONG", hd);
									%>
									<!-- truyền hoaDon sang doLuuHoaDon.jsp  -->
									<!-- truyền listHongHoc sang doLuuHoaDon.jsp  -->
									<!-- truyền hd sang doLuuHoaDon.jsp  -->
									<!-- end --> 
								</div>
								<div
									style="display: flex; justify-content: center; margin-top: 35px;">
									<button type="button" class="btn btn-danger btn-icon-text"
										onclick="openPage('doLuuHoaDon.jsp')"
										style="padding: 0.75rem 1rem; color: #f3f6f9; margin-bottom: 20px; width: 185px;">
										Xác nhận</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">
						<span
							class="text-muted d-block text-center text-sm-left d-sm-inline-block">Custom
							© by PTITer</span> <span
							class="float-none text-muted float-sm-right d-block mt-1 mt-sm-0 text-center">MSV:B17DCCN650</span>
					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="../../vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="../../js/off-canvas.js"></script>
	<script src="../../js/hoverable-collapse.js"></script>
	<script src="../../js/template.js"></script>
	<script src="../../js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->
</body>

</html>
