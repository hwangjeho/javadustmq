<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>apple</title>
<style type="text/css">
html, body{
	margin: 0;
	padding: 0;
	height: 100%;
}
#container{
	width: 100%;
	height: 100%;
	
}
#header{
	width: 100%;
	height: 50px;
	background-color: black;
}
#menu{
	margin: 0 auto;
	height: 50px;
	width: 900px;
}
#main{
	height: calc(100%-50px);
	width: 100%;
}
#section{
	height: 100%;
	width: 900px;
	margin: 0 auto;
}
ul{
	margin: 0;
	padding: 0;
	list-style-type: none;
}
li{
	float: left;
	height: 50px;
	line-height: 50px;
	width: 100px;
	text-align: center;
}
li a{
	text-decoration: none;
	font-size: large;
	color: white;
	font-family: "D2coding";
}
a {text-decoration: none;}
a:link{color: }
a:visited{color: }
a:hover{color: red;}
</style>
</head>
<body>
<div id="container">
	<div id="header">
		<div id="menu">
			<ul>
				<li><a href="#">메뉴1</a></li>
				<li><a href="#">메뉴2</a></li>
				<li><a href="#">메뉴3</a></li>
				<li><a href="#">메뉴4</a></li>
				<li><a href="#">메뉴5</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="section">
			
		</div>
	</div>
</div>
</body>
</html>