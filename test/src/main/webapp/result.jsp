<%@page import="java.util.ArrayList"%>
<%@page import="util.Poet"%>
<%@page import="character.CharacterDto"%>
<%@page import="character.CharacterDao"%>
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
CharacterDao cdao = CharacterDao.getInstance();
System.out.println(result.getCharacter());
CharacterDto character = cdao.getCharacter(result.getCharacter());
System.out.println(character.getName());
ArrayList<String> poet = Poet.getPoet(result);
%>
   <section>
    <h2>당신은<br> <span style="font-size: 40px;"><%=character.getName() %></span></h2><br>
    <div class="character">
    	<div class="info" id="quote">"<%=character.getQuote() %>"</div>
    	<div class="info" id="explain"><%=character.getExplain() %></div>
    </div>
    <div class="poet">
    	<%for(int i=0; i<poet.size(); i++){%>
    		<%=poet.get(i) %><br>
    	<%} %>
    </div>
    </section>
    <script src="resources/page.js"></script>
</body>
</html>