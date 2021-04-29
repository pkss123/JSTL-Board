<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp - core</title>
</head>
<body>
	<h1>core 태그 - attribute 생성 및 제거</h1>
	<hr><br>
	
	<c:set var="page1" value="test1"/>
	<c:set var="page2">test2</c:set>
	<c:set var="req" value="test3" scope="request"/>
	<c:set var="sion" value="test4" scope="session"/>
	<%-- session.setAttribute("sion", "test4") --%>
	
	<c:set var="app" value="test5" scope="application"/>	
	
	
	
	<p>page1 : ${page1 }</p>
	<p>page2 : ${page2 }</p>
	<p>req : ${req }</p>
	<p>sion : ${sion }</p>
	<p>app : ${app }</p>
	
	<form>
		<input type="hidden" name="forward" value="yes">
		<input type="submit" value="forward">
	</form>
	
	<%
		String isfor = request.getParameter("forward");
		if("yes".equals(isfor)){
			RequestDispatcher rd = request.getRequestDispatcher("ex02.jsp");
			rd.forward(request, response);
		}
	%>
	
</body>
</html>