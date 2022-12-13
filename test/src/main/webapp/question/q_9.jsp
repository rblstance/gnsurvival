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
int q_5 = result.getQ_5();
%>
	<nav>
		<progress value="10" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    	<%if(inout == 1){
    		if(q_5 == 1){%>
    		체중을 실어 가판대를 들어올려보지만 역부족이다. 저기요! 저 좀 도와주시겠어요? 아무도 답하지 않는다.
    		‘저 이제 한계인 것 같아요. 가보셔도 돼요….’ 그 말을 남기고 그가 눈을 감는다. 헤 벌린 입에서 숨이 느껴지지 않는다.
    		<%} else { %>
    		막 달리려는데 뒤에서 무언가 떨어지는 소리가 난다! 황급히 뒤를 돌아보자 그가 있던 자리에 커다란 간판이 떨어져 있다. 그는 보이지 않는다….
    		<%} %>
    	<%} else {
    		if(q_5 == 1){%>
    		아무도 선뜻 반대하지 않는다. <br>문 앞에는 셔츠가 온통 피로 물든 여자가 간신히 서 있다. 저희가 해드릴 수 있는 건 없는데…. 여자가 바닥에 앉아 헐떡이며 답한다.<br>
    		‘괜찮아요. 도망치느라 급급해서….’ <br>도망이요? 밖에 무슨 일이 있는데요? <br>‘이제 절대 문 열어주지 마세요. 지금 밖에….’<br> 말을 마치기도 전에 여자의 온몸이 추욱 늘어진다.
    		우리는 문을 잠그고 그를 방 한 편에 뉘인다. 그가 편히 쉴 수 있도록.
    		<%} else { %>
    		모두 긍정하듯 숨 죽인 채 자리에서 움직이지 않는다. ‘제발요! 제발 문 열어주세요. 도와주세요!’ 소리치던 음성이 차츰 옅어진다.<br> 이윽고 문틈으로 흘러든 피가 방 안으로 빠르게 번진다.
    		<%} %>
    	<%} %>
    	<br>지금… 사람이 죽은 거야?
    	</div>
    <div class="answer">
    	<form method="post" action="q9next" name="form">
    		<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">어쩐지 세상이 망할 것 같다고는 생각했는데….</label><br><br>
    		<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">어딘가 이걸 해결할 방법이 있을 거야.</label><br><br>
    		<input type="radio" name="answer" id="3" value="3" onclick="submit()"><label for="3">어떡해? 너무 무서워…. 망했어…</label>
    	</form>
    </div>
    </section>
</body>
</html>