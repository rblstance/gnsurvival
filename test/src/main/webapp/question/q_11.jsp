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
		<progress value="12" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    	<%if(inout == 1){%>
    		멀리서 한 노인이 소리를 지르며 나에게 달려온다. 눈가에 핏발이 서 있다! 나는 <%=result.getWeapon()%>(을)를 잡은 손에 힘을 주고 있는 힘껏 <%=result.getWeapon()%>(을)를 휘두른다.
    		풀썩! 그는 누군가에게 총을 맞고 제압 당한다. 그는 내가 아는 사람이다. 그는...
    	<%} else { %>
    		이윽고 문이 열린다! 나는 <%=result.getWeapon()%>(을)를 처들었다가 상대를 확인하고 스르륵 손에서 힘을 뺀다. 문 앞에 서 있는 것은...
    	<%} %>
    	</div>
    <div class="answer">
    	<form method="post" action="" name="form">
    		<input type="button" value="다음" onclick="location.href='q12'">
    	</form>
    </div>
    </section>
</body>
</html>