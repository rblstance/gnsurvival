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
<body onload="javascript:vibration(this);">
	<nav>
		<progress value="4" max="17"></progress>
    </nav> 
    <section>
    	<div class="question">
    		그때! 갑자기 주변이 흔들린다.<br> 책상 위에 있던 형광펜이 바닥에 굴러 떨어진다.<br> 뭐야! 지진인가?
    	</div>
    <div class="answer">
    	<form method="post" action="q3next" name="form">
    		<input type="radio" name="answer" id="1" value="1" onclick="submit()"><label for="1">휴대폰을 켜 SNS에 접속한다. 아직 뉴스도 없네.</label><br><br>
    		<input type="radio" name="answer" id="2" value="2" onclick="submit()"><label for="2">이제 괜찮아지겠지? 지하라서 진동이 더 심한가 봐.</label>
    	</form>
    </div>
    </section>
    <script src="resources/page.js"></script>
</body>
</html>