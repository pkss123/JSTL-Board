<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 띄우기</title>

<style>
	body{width: 1000px; margin: 0 auto;	}
	h1{ text-align: center;	}
	table{ border-collapse: collapse; width: 80%; margin: 0 auto;}
	th,td{ border: 1px solid black; padding: 0 10px;}
</style>
</head>
<body>

	<%-- 1. dao 객체 선언 --%>
	<jsp:useBean id="dao" class="day18.DAO"/>
	
	<%-- 2. dao 가져온 게시판 목록을 list에 저장 --%>
	<c:set var="list" value="${dao.selectBoard() }"/>

	<h1>게시판</h1>
	<hr><br>
	
	<table>
		<tr>
			<th>idx</th>
			<th>제목</th>
			<th>닉네임</th>
			<th>작성날짜</th>
			<th>조회수</th>
		</tr>
		
		<%-- 3. 반복으로 테이블 내영(=list) 전체를 출력 --%>
		<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td>${dto.title }</td>
				<td>${dto.nickName }</td>
				<td>${dto.creation }</td>
				<td>${dto.viewCount }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>