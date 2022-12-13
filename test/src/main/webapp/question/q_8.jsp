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
		<progress value="9" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    	<%if(inout == 1){ %>
    		스터디카페가 역에서 멀지 않아 다행이야. 없던 힘까지 다해 역으로 달린다. <br>아악! 무언가 발목에 걸려 넘어질 뻔했다. 고개를 돌리자 누가 양손으로 발목을 잡고 있다. <br>
    		‘저기요. 저 좀 도와주세요. 이거 치우는 것만이라도 도와주세요.’ <br> 바닥에 엎어진 그의 몸 위에 이동식 가판대가 쓰러져 있다.
    	<%} else { %>
    		무슨 상황인데? 토익책을 정리할 정신도 없이 우리는 걱정 어린 말을 주고 받는다.<br> 쾅쾅! 누군가 문을 두드린다. <br>‘아까 제가 문 잠갔어요. 혹시 몰라서….’ <br>문 앞에 앉아 있던 멤버가 조심스레 말한다.<br>
    		‘저기요! 문 좀 열어주세요! 살려주세요!’ <br> 문을 두드리는 소리가 격렬해진다.
    	<%} %>
    	</div>
    <div class="answer">
    	<form method="post" action="q8next" name="form">
    		<%if(inout == 1){ %>
    			<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">치워드릴게요. 잠시만 기다리세요.</label><br><br>
    			<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">나 살기도 바쁜데…. 에잇, 저리 비켜! 나는 발목을 비틀어 그의 손에서 빠져나간다.</label>
    		<%} else { %>
    			<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">밖에 무슨 일이 있나 봐요. 대피하신 것 같은데 문 열어 드립시다.</label><br><br>
    			<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">문 열었다가 위험해지면 어떡해요? 죄송하지만 문 열어드리지 마요.</label>
    		<%} %>
    	</form>
    </div>
    </section>
</body>
</html>