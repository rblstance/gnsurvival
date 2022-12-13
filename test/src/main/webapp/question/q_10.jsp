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
		<progress value="11" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    	<%if(inout == 1){%>
    		내 태도와 무관하게 눈앞에서는 참혹한 광경이 벌어지고 있다. 스터디 카페 건물은 이미 붕괴해 있었다.
    		나는 도로에 나뒹굴던 <%=result.getWeapon() %>(을)를 하나 집어든다.
    	<%} else { %>
    		내 마음과 무관하게 눈앞에서는 참혹한 일이 벌어져 있었다. 그때 문 두드리는 소리가 다시 난다. 나는 검지를 입가에 가져다대 스터디 멤버들에게 눈짓한다. 발 뒤꿈치를 들고 방 구석으로 숨어 몸을 웅크린다.<br>
    		문고리를 흔드는 소리가 점차 격렬해진다! 문이 세게 흔들린다. 나는 바닥에 나뒹굴던 <%=result.getWeapon() %>을 집어든다. 각자 벽에 붙어 가방을 끌어안은 채 덜덜 떤다.
    	<%} %>
    	</div>
    <div class="answer">
    	<form method="post" action="" name="form">
    		<input type="button" value="다음" onclick="location.href='q11'">
    	</form>
    </div>
    </section>
</body>
</html>