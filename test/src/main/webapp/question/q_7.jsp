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
int inout = Integer.parseInt(result.getInout());
%>
	<nav>
		<progress value="8" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    	<%if(inout == 1){ %>
    		매캐한 연기가 도로에 자욱했다. 전쟁이라도 난 거야? 온통 흐느끼거나 소리 지르며 도로를 달리는 사람들로 가득하다.<br>
    		안전한 곳으로 피해야겠어. 사이렌 소리와 안내 방송이 들린다. 모두 강남역 대피소로 이동하세요.
    	<%} else { %>
    		몇 명은 스터디 카페를 나간다. 몇 분이 지났을까, 재난 문자가 다시금 울린다. <br>국가 재난 사태가 선포되었습니다. 
    		실외에 계시는 경우 신속히 인근 대피소로 대피하십시오.<br> 실내에 계시는 경우 이동하지 마시고 침착히 다음 안내를 기다리십시오.
    	<%} %>
    	</div>
    <div class="answer">
    	<form  name="form">
    		<input type="button" value="다음" onclick="location.href='q8'">
    	</form>
    </div>
    </section>
</body>
</html>