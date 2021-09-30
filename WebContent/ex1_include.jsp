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
		<jsp:include page="ex1_menu.jsp"/>
		<%--
			include액션 요소는 (jsp:이 액션요소를 뜻한다.)
			포함된 jsp문서의 코드가 들어온 것이 아니라 
			컴파일 된 HTML문서가 포함된다. 그래서 
			jsp안에서 선언된 변수 등을 현재 페이지에서 사용할 수 없다.
		 --%>
	</div>
	<h1><%--<%=msg%> 이건 오류다!! --%></h1>
</body>
</html>