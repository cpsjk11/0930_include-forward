<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div id="header">
		<%--< jsp:include page="ex1_menu.jsp"/>--%>
		<%@ include file="ex1_menu.jsp" %>
		<%--
			include지시자는
			포함된 jsp문서의 코드 자체를 포함시킨다. 그래서
			jsp안에서 선언된 변수 등을 현재 페이지에서 사용할 수 있다.
		 --%>
	</div>
	<h1><%=msg%></h1>
</body>
</html>