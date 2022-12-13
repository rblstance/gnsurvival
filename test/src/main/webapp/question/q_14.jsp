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
String enemy = result.getQ_8String(result.getQ_8());
%>
	<nav>
		<progress value="15" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    	<%if(inout == 1){ %>
    		<%=enemy %>(은)는 걸음을 멈추더니 몸을 틀어 내 쪽으로 다가온다.
    	<%} else { %>
    		<%=enemy %>(은)는 방안을 둘러보더니 내 쪽으로 다가온다.
    	<%} %>
    	천천히 <%=enemy %>(이)가 내 앞에 선다.
    	</div>
    <div class="answer">
    	<form method="post" action="q14next" name="form">
    		<%if(inout == 1){ %>
    			<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">슬금슬금 뒷걸음질치다 역으로 달린다. 거긴 안전하겠지.</label><br><br>
    			<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">뭐지? 어쩐지 나에게 위협적이지 않은데.</label><br><br>
    			<input type="radio" name="answer" id="3" value="3" onclick="submit()"><label for="3">이렇게 죽을 줄 알았어. 드디어 끝이구나.</label>
    		<%} else { %>
    			<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">제발 살려주세요, 살려주세요. 나는 엉엉 울면서 그에게 빈다.</label><br><br>
    			<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">어쩐지 익숙한 눈빛. 나는 그가 공격할 마음이 없다는 걸 알아챈다.</label><br><br>
    			<input type="radio" name="answer" id="3" value="3" onclick="submit()"><label for="3">나는 곧 내가 죽는다는 것을 직감한다.</label>
    		<%} %>
    	</form>
    </div>
    </section>
</body>
</html>