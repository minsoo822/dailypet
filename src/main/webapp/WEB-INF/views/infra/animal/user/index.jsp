<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE HTML>
<html>
<head>
	<meta charset="uTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>home</title>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<!-- user css --> 
	<link rel="stylesheet" href="/resources/css/adminstyle.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<!-- jquery ui CSS -->    
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/2088/2088112.png">

	<style type="text/css">
		.background{ 
			background-image:url(/resources/images/xdmin/indexbg.jpg); 
			background-attachment: fixed; 
			background-size: cover;
		}
		
		.mid{
			text-align: center;
		}
		
		h2{
			font-family: 'Happiness-Sans-Title';
			color: white;
			margin-top: 10rem;
			/* text-shadow: -1px 0 #f4f4f4, 0 1px #f4f4f4, 1px 0 #f4f4f4, 0 -1px #f4f4f4; */
		}
		
		.txt{
		   	font-family: 'OTWelcomeRA';
			color: white;
			font-size: 20px;
		}
		
		@font-face {
		    font-family: 'OTWelcomeRA';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		
		@font-face {
		    font-family: 'Happiness-Sans-Title';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Title.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		
		.box{
			border:2px solid #ffffff; 
			background-color: rgba(255,255,255,0.5);
			padding-top: 15px;
			padding-bottom: 15px;
			width: 200px;
			height: 200px;
			padding : 90px 0;
		}

		.choose{
		 	font-family: 'OTWelcomeRA';
			font-size: 20px;
		}
		
		.mid{
			text-align: center;
		}
		
		.wid{
			width: 800px;
		}
		
		a{
			text-decoration: underline;
			color: white;
			font-weight: bold;
			font-size: 15px;
			cursor: pointer;
		} 
		
		a:hover{
			color: #5c7406;
		}
	</style>  
</head>

<body class="background">
	<div class="mid">
		<br>
		<br>
		<h2>안녕하세요, #Daily Pet에 방문해주셔서 감사합니다.</h2>
		<br>
		<span class="txt">사용자, 관리자를 선택해주세요.</span>
		<br>
		<br>
		<br>
		<br>
		<div class="container wid"> 
			<div class="row mid">
				<div class="col-lg-4 col-md-4" style="margin: auto;">
					<div class="container box">
						<span class="choose">사용자</span>
					</div>
					<br> 
					<br>
					<a href="/animal/home">ENTER</a>
				</div> 
				<div class="col-lg-4 col-md-4" style="margin: auto;">
					<div class="container box">
						<span class="choose"><center>관리자</center></span>
					</div>
					<br> 
					<br>
					<a href="/member/loginDmin">ENTER</a> 
				</div> 
			</div>
		</div>
	</div>

</body>
</html>