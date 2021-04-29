<%@page import="day18.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
</head>
<body>
	<%
		Person[] members = new Person[]{
				new Person("홍길동", 20),
				new Person("김길동", 30),
				new Person("이길동", 27),
				new Person("고길동", 43)
				
		};
	
		pageContext.setAttribute("members", members);
	%>
	
	<c:forEach var="i" begin="1" end="10" step="1">
		<%-- for (int i = 1; i <= 10; i ++ --%>
		
		<p>${i } : Hello JSTL</p>
	</c:forEach>
	
	<hr>
	
	<c:forEach var="person" items="${members }">
		<%-- for (Person person : members --%>
		
		<p>${person }
	
	</c:forEach>
	
	<hr>
	
	<form>
		<p>년도 : 
		
			<select name="year">
				<c:forEach var="i" begin="1950" end="2021" step="1">
				
				<option value="${i }">${i }</option>
				
				</c:forEach>
			</select>
		
		</p>
		
		<p><input type="submit" value="전송"></p>
	</form>
	
	<c:if test="${param.year != null }">
		<c:set var="current" value="2021"/>
		
		<h3>당신의 나이는 ${current - param.year + 1 } 입니다</h3>
	</c:if>
	
</body>
</html>