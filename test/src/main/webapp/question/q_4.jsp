<%@page import="result.ResultDto"%>
<%@page import="result.ResultDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="resources/grid.css">
    <title>생존형 토익 스터디</title>
</head>
<body>
<%
ResultDao dao = ResultDao.getInstance();
String code = (String)session.getAttribute("code");
ResultDto result = dao.getResult(code);
String reg_date = result.getRegdate();
String month = result.getRegdate().substring(5, 7);
String day = result.getRegdate().substring(8,10);
%>
	<nav>
		<progress value="5" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    		무슨 일이래요?<br> 다들 웅성거리며 휴대폰을 보지만 정확한 소식을 아는 사람은 아무도 없다.<br> 그때 '띠롱!' '띠롱!'<br> 재난 경보와 함께 문자가 왔다.<br>
    		<%=month %>월 <%=day %>일 강남역 흔들림 발생하여 경위 파악 중…<br> 다른 하나는 [    ]에게서 온 연락인가?
    	</div>
    <div class="answer">
    	<form method="post" action="q4next" name="form">
    		<input type="text" name="answer" id="name2" maxlength="20" placeholder="이름을 입력하세요." required>
    		<input type="submit" value="다음">
    	</form>
    </div>
    </section>
</body>
</html>