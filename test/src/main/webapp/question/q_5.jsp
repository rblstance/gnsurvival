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
int day = Integer.parseInt(result.getRegdate().substring(8,10))-2;
%>
	<nav>
		<progress value="6" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    		<%=month %>월 <%=day %>일 토익 시험 난이도는? <br>링크에서 총평 강의를 확인할 수 있습니다! https://toeic-sucks.com/reviewVideo <br>
    		뭐야, 인강 사이트네. <%=result.getName2() %>에게서는 연락도 없고…. 괜찮으려나? 다들 떠드는 소리에 스터디 분위기가 어수선하다.<br>
    		쿠궁! 건물이 이전보다 강하게 흔들린다!
    	</div>
    <div class="answer">
    	<form name="form">
    		<input type="button" value="다음" onclick="location.href='q6'">
    	</form>
    </div>
    </section>
</body>
</html>