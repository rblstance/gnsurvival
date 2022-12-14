<%@page import="result.ResultDto"%>
<%@page import="result.ResultDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
%>
	<nav>
		<progress value="14" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    	<%if(inout == 1){
    		if(q_7 == 1){%>
    		<%=result.getName2()%>(은)는 나에게 달려와 나를 안는다. ‘괜찮아?’ <%=result.getName2()%>(이)가 내게 묻는다. 이 순간만큼은 모든 것이 괜찮다는 착각이 든다.<br>	
    		<%} else if(q_7 == 2) { %>
    		<%=result.getName2()%>(은)는 나에게 천천히 걸어온다. 그리고 방금 사용했던 바로 그 권총을 나에게 겨눈다.<br>
    		<%} else { %>
    		<%=result.getName2()%>(은)는 다리가 풀린듯 바닥에 주저앉는다. 권총을 쥔 <%=result.getName2()%>의 두 손이 심하게 떨린다.<br>
    		<%} %>
    	<%} %>
    	번쩍! 순간 굉음과 함께 큰 빛이 주변을 감싼다. 나는 나도 모르게 눈을 질끈 감는다. 황급히 눈을 뜨자 누군가 <%=result.getName2()%>(을)를 안고 있다. 잠든듯 편안해 보이는 <%=result.getName2()%>. 그를 안고 있는 이는…
    	</div>
    <div class="answer">
    	<form method="post" action="q13next" name="form">
    		<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">침 흘리는 좀비</label><br><br>
    		<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">목발을 짚은 군인</label><br><br>
    		<input type="radio" name="answer" id="3" value="3" onclick="submit()"><label for="3">평범한 행인</label><br><br>
    		<input type="radio" name="answer" id="4" value="4" onclick="submit()"><label for="4">늠름한 황제펭귄</label><br><br>
    		<input type="radio" name="answer" id="5" value="5" onclick="submit()"><label for="5">날개를 펼친 천사</label><br><br>
    		<input type="radio" name="answer" id="6" value="6" onclick="submit()"><label for="6">위대한 옛 존재</label><br><br>
    		<input type="radio" name="answer" id="7" value="7" onclick="submit()"><label for="7">총을 든 윤 선생</label>
    	</form>
    </div>
    </section>
</body>
</html>