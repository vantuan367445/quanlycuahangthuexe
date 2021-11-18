<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản lý thuê xe ô tô</title>
<link rel="stylesheet"
	href="../../vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="shortcut icon" href="../../images/favicon.png" />
<style>
.btn1 {
	padding: 0.875rem 1.25rem;
	font-size: 0.75rem;
}
</style>
</head>

<body>
	<div class="container-scroller">
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
						href="../../gdChinhNVQL.jsp">Quay lại</a></li>
				</ul>
			</nav>
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Danh sách hợp đồng thuê xe từ đối
										tác</h4>
										<th>Đơn vị: ngày/VND</th>
									<p class="card-description"></p>

									<div class="table-responsive pt-3">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th style="width: 30px;">STT</th>
													<th>Ngày bắt đầu</th>
													<th>Ngày kết thúc</th>
													<th>Tên đối tác</th>
													<th>Số điện thoại</th>
													<th>Tên xe</th>
													<th>Biển số</th>
													<th>Đơn giá</th>
													<th>Ngày trả</th>
													<th style="width: 60px;">Thao tác</th>
												</tr>

											</thead>
											<%
												HDongDoTChoThueXeDAO dao = new HDongDoTChoThueXeDAO();
												ArrayList<HDongDTChoThueXe> hds = dao.getDsHopDong(1);
												
												session.setAttribute("danhsachHD", hds);
											if (hds != null) {
											%>
											<tbody>
												<%
													for (int i = 0; i < hds.size(); ++i) {
														SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
														String date1=sdf.format(hds.get(i).getNgaybd());
														String date2=sdf.format(hds.get(i).getNgaykt());
														
														
														Doitac dt = new DoiTacDAO().getDoiTac(hds.get(i));
														XeDathueDoitac xeDaThueDT = new XeDathueDTDAO().getXeDaThueDT(hds.get(i));
														Xe xe = xeDaThueDT.getXe();
														
														String date3=sdf.format(xeDaThueDT.getNgaytra());
														
														DecimalFormat formatter = new DecimalFormat("###,###,###");
														String giaText = formatter.format(xeDaThueDT.getGia());
												%>
												<tr>
													<td><%=i + 1%></td>
													<td><%=date1%></td>
													<td><%=date2%></td>
													<td><%=dt.getTen()%></td>
													<td><%=dt.getSdt()%></td>
													<td><%=xe.getTen()%></td>
													<td><%=xe.getBienso()%></td>
													<td><%=giaText%></td>
													<td><%=date3%></td>
													<td><a href="gdHopDong.jsp?stt=<%=i%>">Thanh lý</a></td>
												</tr>
												<%
													}
												%>

											</tbody>
											<%
												}
											%>
										</table>
									</div>
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
			</div>
		</div>
	</div>
	<script src="../../vendors/base/vendor.bundle.base.js"></script>
	<script src="../../js/off-canvas.js"></script>
	<script src="../../js/hoverable-collapse.js"></script>
	<script src="../../js/template.js"></script>
	<script src="../../js/todolist.js"></script>
</body>

</html>
