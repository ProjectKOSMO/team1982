<!-- owner 로그인 성공 시 세션 저장 jsp  이미 이전 컨트롤러에서 로그인 성공했기 때문에 별도 id 확인과정 필요 없음-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String ownerid = request.getParameter("ownerid");
	String ownerpass = request.getParameter("ownerpass");
	
	
	/* if(ownerid != null && ownerid.equals(ownerpass)){
		
	} */
	
	session.setAttribute("ownerid", ownerid);  
	
	response.sendRedirect("../main.do");
	
%>
	
