<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 요청시 한글처리
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	
	//파라미터 값들 중 하나라도 받지 못했다면 앞 페이지로 이동!!
	if(name == null || year == null){
		//response.sendRedirect("ex2_forward.jsp");
%>
		<jsp:forward page="ex2_forward.jsp"/>
<%
	}else{
		// 나이를 구한다.
		//Date now = new Date(System.currentTimeMillis()); // 년-월-일
		Calendar now = Calendar.getInstance();
		
		int cYear = now.get(Calendar.YEAR); // 현재년도
		int cMonth = now.get(Calendar.MONTH)+1; // 현재 월(1월:0 ,2월:1)
		int cDate = now.get(Calendar.DAY_OF_MONTH); // 현재 날짜!
		
		// 사용자가 입력해서 보내준 생년은 문자열이므로 연산을 못하므로
		// 정수로 변환하자!
		int bYear = Integer.parseInt(year);
		
		//나이 구하기
		int age = cYear-bYear;
		
		// 바로 앞 페이지로 forward를 시킨다.
%>
		<jsp:forward page="ex2_forward.jsp">
			<jsp:param value="<%=age%>" name="age"/>
		</jsp:forward>
<%
	}
%>
