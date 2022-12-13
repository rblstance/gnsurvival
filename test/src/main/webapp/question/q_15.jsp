<%@page import="result.ResultDao"%>
<%@page import="result.ResultDto"%>
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
int q_7 = result.getQ_7();
String enemy = result.getQ_8String(result.getQ_8());
%>
	<nav>
		<progress value="16" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    	<%if(inout == 1){if(q_7 == 1){ %>
    		아무리 달려도 <%=enemy %>이(가) 그보다 약간 빠른 속도로 나를 추격한다.
    		<%} %>
    		<%=enemy %>(이)가 입을 열더니 나에게 묻는다.
    	<%} else { %>
    		그가 나와 눈을 맞추며 천천히 입을 연다.<br> 이내 내게 묻는다.
    	<%} %>
    	</div>
    <div class="answer">
    	<form method="post" action="q15next" name="form">
    		<input type="text" name="answer" id="question" maxlength="200" placeholder="질문을 입력하세요." required>
    		<input type="submit" value="다음">
    	</form>
    </div>
    </section>
</body>
</html>