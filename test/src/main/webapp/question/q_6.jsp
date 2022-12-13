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
int sel1 = (int)(Math.random()*2-1);
int sel2 = (int)(Math.random()*2-1);
%>
	<nav>
		<progress value="7" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    		더는 책을 보는 사람이 없다. 우왕좌왕한 채 어쩔 줄 모른다. 뭐야? 어떻게 해야 돼? <br>불투명한 유리창 너머로 움직이는 사람들 형체가 보인다.
    		‘야! 얼른 나와!’ 몇 무리의 사람들이 일제히 건물을 빠져나가는 소리가 들린다. <br>어떡하지?
    	</div>
    <div class="answer">
    	<form method="post" action="q6next" name="form">
    		<%if(sel1 == 0){ %>
    			<input type="radio" name="answer" id="1" value="10" onclick="submit()"><label for="1">밖에 나갔다간 비참하게 죽고 말 거야. 실내에 머무르자.</label><br><br>
    			<input type="radio" name="answer" id="2" value="21" onclick="submit()"><label for="2">바깥은 괜찮을지 몰라. 나가서 상황을 살펴보자.</label><br><br>
    		<%} else { %>
    			<input type="radio" name="answer" id="1" value="11" onclick="submit()"><label for="1">안에 남아 있다간 건물이 무너질 것 같아. 밖으로 나가자.</label><br><br>
    			<input type="radio" name="answer" id="2" value="20" onclick="submit()"><label for="2">우선 안전하게 실내에서 상황을 살피자.</label><br><br>
    		<%}
    		if(sel2 == 0){%>
    			<input type="radio" name="answer" id="3" value="31" onclick="submit()"><label for="3" style="font-size:12px;">어떤 선택을 하든 방법은 있을 거야. 나는 사람들을 따라 나간다.</label>
    		<%} else { %>
    			<input type="radio" name="answer" id="3" value="30" onclick="submit()"><label for="3" style="font-size:12px;">어떤 선택을 하든 방법은 있을 거야. 나는 사람들을 따라 방에 머문다.</label>
    		<%} %>
    	</form>
    </div>
    </section>
</body>
</html>