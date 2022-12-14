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
	<nav>
    <progress value="1" max="17"></progress>
   </nav> 
   <section>
    오늘은 토익 스터디를 하는 날!<br> 늘 그렇듯<br> 강남역 근처 스터디 카페로 향하는 나,<br><br><br>
    
    <span style="font-style: italic; color: #bebebe; font-size: 13px;">※입력하신 정보는 원활한 이용을 위해 저장되며, 서비스 이용 이외의 목적으로 활용되지 않습니다. 서비스 종료 시 정보는 폐기됩니다.</span>
    <div class="answer">
	    <form method="post" action="indexform" style="display: inline-block; margin: 0 auto;">
		    <input type="text" name="name" id="name" placeholder="내 이름 입력" maxlength="20" required>
	        <input type="submit" value="완료">
	    </form>
    </div>
        
    </section>
    <script src="resources/page.js"></script>
</body>
</html>