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
%>
	<nav>
		<progress value="2" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    		알 수 없는 이유로 <%=result.getVehicle() %>(이)가 연착됐어….<br> 이러다가는 지각할지도 몰라. 오늘 내가 발표인데!
    	</div>
    <div class="answer">
    	<form method="post" name = "form" action="q1next">
  			<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">이런 민폐가… 당장 달려!</label><br><br>
  			<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">뭐 어쩌겠어…. 조금 늦는 건 다들 이해해주겠지?</label>
    	</form>
    </div>
    </section>
    <script src="resources/page.js"></script>
</body>
</html>