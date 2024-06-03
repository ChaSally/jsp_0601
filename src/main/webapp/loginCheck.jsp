<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인 페이지</title>
</head>
<body>
	<%
		// Object object = session.getAttribute("ValidMem");
		String validMem = (String) session.getAttribute("ValidMem");//downcasting
		//로그인 성공이면 validMem 값은 yes, 비로그인이면 null값
		String sessionID = (String) session.getAttribute("SessionID");
		
		String name = "";
		if(validMem != null) { //참이면 로그인
			
			out.println(sessionID + "님 로그인 중" + "<br>");	//java 코드
			
			Enumeration enuSession = session.getAttributeNames();//세션 안에 속성/이름들 열거
			
			while(enuSession.hasMoreElements()) {
				name = enuSession.nextElement().toString();
				out.println(name+"<br>");
				String sessionVal = (String)session.getAttribute(name);
				out.println("sessionVal"+"<br>");
			}
	%>
		<a href="sessionTest.jsp"></a>
		<br>	
		<a href="logout.jsp">로그아웃</a>
		<br>
	<%	
		} else { //비로그인 상태
			out.println("로그인 페이지로 이동");
		}
	%>
	<br><br>
	<hr>
	
</body>
</html>