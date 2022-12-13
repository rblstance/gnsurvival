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
		<progress value="13" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    	<%=result.getName2()%>(이)다.
    	<%if(inout == 1){%>
    		 나는 주저앉아 <%=result.getName2()%>의 얼굴을 올려다본다. <%=result.getName2()%>의 얼굴에 비친 것은…
    	<%} else { %>
    		어떻게 여기 있지? 나는 경고를 무시한 채 그를 들인다. <%=result.getName2()%>(이)가 지친 모습으로 들어온다. 그는…
    	<%} %>
    	</div>
    <div class="answer">
    	<form method="post" action="q12next" name="form">
    	<%if(inout == 1){%>
    		<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">실낱의 희망</label><br><br>
    		<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">깊은 절망</label><br><br>
    		<input type="radio" name="answer" id="3" value="3" onclick="submit()"><label for="3">지독한 현실</label>
    	<%} else { %>
    		<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">입을 연다. ‘너를 구하러 왔어.’</label><br><br>
    		<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">누구의 것인지 불분명한 피로 찢어진 옷이 물들어 있다.</label><br><br>
    		<input type="radio" name="answer" id="3" value="3" onclick="submit()"><label for="3">겨우 발을 떼고 방 안에 들어온다. 다들 의심의 눈초리를 보낸다.</label>
    	<%} %>
    		
    	</form>
    </div>
    </section>
</body>
</html>