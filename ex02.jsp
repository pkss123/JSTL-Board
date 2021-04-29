<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<h1>core 태그 결과</h1>
	<hr><br>
	
	<p>page1 : ${page1 }</p>
	<p>page2 : ${page2 }</p>
	<p>req : ${req }</p>
	<p>sion : ${sion }</p>
	<p>app : ${app }</p>
	
	<hr>
	<h2>attribute 제거</h2>
	
	<c:remove var="req"/>
	<c:remove var="sion"/>
	<%-- session.removeAttribute("sion") --%>
	
	<c:remove var="app"/>
	
	<p>page1 : ${page1 }</p>
	<p>page2 : ${page2 }</p>
	<p>req : ${req }</p>
	<p>sion : ${sion }</p>
	<p>app : ${app }</p>
	
</body>
</html>