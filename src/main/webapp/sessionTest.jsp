<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보 테스트</title>
</head>
<body>
	<% 
		int sessionTime = session.getMaxInactiveInterval();//1800초
		out.println("세션 기본 유효시간: "+ sessionTime + "<br>");
		session.setMaxInactiveInterval(600);
		sessionTime = session.getMaxInactiveInterval();
		session.setMaxInactiveInterval(10);
		out.println("세션 변경 유효시간: "+ sessionTime + "<br>");
		
	%>
	<hr>
	<%
		long firstTime = session.getCreationTime();
		long lastTime = session.getLastAccessedTime();
		
		long keepTime = (lastTime - firstTime)/60;
		out.println("세션 유지 시간: " + keepTime);
		String session_id = session.getId();
		out.println("세션 고유 아이디 :" + session_id);
	
	%>
	<br>
	<a href="loginCheck">로그인 확인 페이지로</a>

</body>
</html>