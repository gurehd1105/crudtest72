<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>		
	<form method="post" action="${pageContext.request.contextPath}/addMember">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" id="memberId" name="memberId"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="memberPw" name="memberPw"></td>
			</tr>						
		</table>
		<button id="addBtn">회원가입</button>
	</form>
</body>
</html>