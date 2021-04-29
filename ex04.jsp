<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp - 제어문</title>
<style>
	fieldset {
	display: inline-block;
}
</style>
</head>
<body>
	<h1>제어문 2 - choose</h1>
	<hr><br>
	
	<h3>c:if 로 여러 조건을 걸면, 여러 구문이 동시에 실행되거나 실행되지 않을 수 있다</h3>
	<h3>c:choose 는 when 구문중에서 딱 하나만 실행이 된다</h3>
	
	<fieldset>
		<legend>전송 폼</legend>
		
		<form>
			<p><input name="age" type="number" placeholder="나이 입력" required><p>
			<p><input type="submit" value="전송"></p>
		</form>
	</fieldset>
	
	<hr>	
	
	<c:if test="${param.age != null }">
	<h2>결과</h2>
	
	</c:if>
	<c:choose>
		<c:when test="${param.age >=20 }">
			<h3>성인</h3>
		</c:when>
		
		<c:when test="${param.age >=17 }">
			<h3>고등학생</h3>
		</c:when>
	
		<c:when test="${param.age >=14 }">
			<h3>중학생</h3>
		</c:when>
	
		<c:when test="${param.age >=8 }">
			<h3>초등학생</h3>
		</c:when>
	
		<c:otherwise>
			<h3>초등학생 미만</h3>
		</c:otherwise>
	
	</c:choose>
	
		
</body>
</html>