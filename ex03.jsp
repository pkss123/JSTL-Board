<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp - 제어문</title>
<style>
	fieldset {
	display: inline-block;
}
</style>

</head>
<body>
	<h1>제어문</h1>
	<hr><br>
	
	<fieldset>
		<legend>전송 폼</legend>
		
		<form>
			<p><input name="age" type="number" placeholder="나이 입력" required="required"></p>
			
			<p><input type="submit" value="전송"></p>
		</form>
	</fieldset>
	
	<c:if test="${param.age != null }">	<%-- 조건식은 EL 태그로 작성한다 => 결과가 참이면 true라는 문자열이 test속성이 들어간다 --%>
	
		<hr>
		<h2>결과 창</h2>
	
		<c:if test="${param.age >= 20 }">
			<h3>당신은 성인</h3>
		</c:if>
	
		<c:if test="${param.age < 20 }">
			<h3>당신은 미성년자</h3>
		</c:if>
	</c:if>		<%-- else는 따로 없으니 주의 --%>
</body>
</html>