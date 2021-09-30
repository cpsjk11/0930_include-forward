<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청시 한글처리
	request.setCharacterEncoding("utf-8");
	
	//파라미터 받기 - 모두 받는 경우가 아니면 모두 받지 못하는 경우
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String age = request.getParameter("age");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(name == null || year == null || age == null){
		// 하나라도 받지 못한 경우 폼을 보여준다
%>
	<form action="ex2_forward2.jsp" method="post">
		<label for="name">이름:</label>
		<input type="text" id="name" name="name"/><br/>
		
		
		<label for="year">생년:</label>
		<input type="text" id="year" name="year" placeholder="2000"/><br/>
		
		<input type="submit" value="보내기"/>
	</form>
<%
	}else{
		//파라미터 3개 모두 받은 경우!
%>
		<h2>
			<%=name %>님은<%=year %>년 생이므로<br/>
			<%=age %>세 입니다.
		</h2>
<%
	}//if문의 끝
%>
</body>
</html>