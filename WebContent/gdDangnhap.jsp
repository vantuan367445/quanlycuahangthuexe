<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Đăng nhập </title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css">
	<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<%
      if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("timeout")){
          %> <h4>Hết phiên làm việc. Làm ơn đăng nhập lại!</h4><%
      }
      else if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("fail")){
          %> <h4 color="red">Sai tên đăng nhập/mật khẩu!</h4><%
      }
 %>
	<dangnhap>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		  	<!-- Brand -->
		  	<a class="navbar-brand" href="https://www.facebook.com/ThunderPTIT/">PTITer</a>
		</nav>
		<div class="container">
			<div class="dangnhap">
				<h2 style="color:white">Đăng nhập</h2>
				<form name="dangnhap" action="doDangnhap.jsp" method="post">
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">
								<i class="fa fa-user-circle" aria-hidden="true"></i>
							</span>
						</div>
						<input type="text" name="username" class="form-control" placeholder="Nhập tên đăng nhập" id="username">
					</div>
					<br><br>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">
								<i class="fa fa-key" aria-hidden="true"></i>
							</span>
						</div>
						<input type="password" name="passwords" class="form-control" placeholder="Nhập mật khẩu" id="passwords">
					</div>
					<br><br>
					<button type="submit" class="btn btn-danger">Đăng nhập</button>
				</form>
				
			</div>
		</div>
	</dangnhap>
	
	<footer>
		<h3>Phân tích thiết kế đảm bảo chất lượng phần mềm</h3>
	</footer>
</body>
</html>