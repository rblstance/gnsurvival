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
int q_1 = result.getQ_1();
%>
	<nav>
		<progress value="3" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    		<%if(q_1 == 1){ %>
    		달린 덕분에 다행히 지각은 면했다….<br>
    		<%} else { %>
    		문을 여니 이미 스터디가 시작해 있었다.<br> 아뿔싸! 조용히 빈 자리에 앉는다….<br>
    		<%} %>
    		다들 무슨 얘기를 하나 했더니,<br> 며칠 전에 응시한 토익 시험에 관한 것이었다!<br> 이번 시험 어땠어? 몇 점 정도 나올 것 같아?<br> 나는…
    	</div>
    <div class="answer">
    	<form method="post" action="q2next" name="form">
    		<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">혹시 몰라. 잘 봤을지도! 만점 아냐? 막 이래~</label><br><br>
    		<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">망한 거 같은데…. 으휴 이럴 줄 알았다, 내가.</label><br><br>
    		<input type="radio" name="answer" id="3" value="3" onclick="submit()"><label for="3" style="font-size:12px;">조용히 책을 편다. 이미 지나간 시험 이야기해봐야 무슨 소용이야.</label>
    	</form>
    </div>
    </section>
    <script src="resources/page.js"></script>
</body>
</html>