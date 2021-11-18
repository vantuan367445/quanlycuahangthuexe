<%@ page pageEncoding="utf-8"
import="java.util.ArrayList,dao.*,model.*"%>
<%
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("passwords");
    Nhanvien nv = new Nhanvien();
    nv.setTendn(username);
    nv.setMatkhau(password);
    
    
    
 
    NhanvienDAO dao = new NhanvienDAO();
    boolean kq = dao.kiemtraDangnhap(nv);
     
    if(kq && (nv.getVitri() == 1)){//nhanvienquanly
        session.setAttribute("nhanvienquanly", nv);
        response.sendRedirect("NhanvienQuanly\\gdChinhNVQL.jsp");
    }else{
        response.sendRedirect("gdDangnhap.jsp?err=fail");
    }
%>