<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");//캐릭터 셋 인코딩(한글처리)
		
		String memberId = request.getParameter("mid");
		String memberPw = request.getParameter("mpw");
		
		if(memberId.equals("tiger")&&(memberPw.equals("12345"))) {
						
			Cookie cookie = new Cookie("memberId", memberId);
			Cookie cookie2 = new Cookie("memberPw", memberPw);
			cookie.setMaxAge(3600);//쿠키의 유효시간 설정(초단위) - 1시간
			
			response.addCookie(cookie);
			response.addCookie(cookie2);
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("loginFail.jsp");
		}
	
	
	
	
	%>
</body>
</html>