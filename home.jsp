<%@page import = "java.sql.*"%>
<!DOCTYPE HTML>
<html lang="en" style="background-color:#e8e8e8;">
	<head>
		<title>Home Page</title>
		<meta charset="utf-8"/>
		<meta name="author" content="Hayden Crawford,Kylie Anderson">
		<meta name="description" content="Programming Personality Profile">
		<meta name="keywords" content="test,quiz,personality,programming,programmer">
		<style>
			#container {
				display:grid;
				grid-template-areas:
					'logo header header header header header'
					'logo navbar navbar navbar navbar navbar'
					'main main main main main sidebar'
					'main main main main main footer';
				font-family:helvetica;
				grid-gap:10px;
				margin:10px;
			}
			#logo {
				grid-area:logo;
				text-align:center;
				color:#0095ff;
				font-size:2em;
				margin-left:20px;
				margin-right:20px;
			}
			#logo:hover {
				cursor:pointer;
			}
			
			#quiz {
				margin-top:-63px;
			}
			#header {
				grid-area:header;
				text-align:center;
				font-size:1.2em;
				padding-top:10px;
				color:#595959;
			}
			#header:hover {
				cursor:default;
			}
			#navbar {
				grid-area:navbar;
				display: grid;
				grid-template-areas:
					'i1 i2 i3 i4 i5';
				grid-gap:10px;
			}
			#i1{grid-area:i1} #i2{grid-area:i2}
			#i3{grid-area:i3} #i4{grid-area:i4}
			#i5{grid-area:i5}
			.item {
				background-color:#baeeff;
				text-align:center;
				position:relative;
				color:#595959;
				outline: 2px solid #595959;
				font-size:1.2em;
			}
			.disableditem {
				background-color:#595959;
				text-align:center;
				position:relative;
				color:black;
				outline: 2px solid black;
				font-size:1.2em;
			}
			.disableditem:hover {
				cursor:default;
			}
			.item:hover {
				background-color: darkblue;
				outline-color:white;
				color:white;
				cursor:pointer;
			}
			#main {
				grid-area:main;
				background-color:white;
				outline: 2px solid #595959;
				padding: 10px;
			}
			#sidebar {
				grid-area:sidebar;
				background-color:white;
				outline: 2px solid #595959;
				padding:10px;
			}
			#footer {
				grid-area:footer;
				text-align:center;
				color:#595959;
			}
		</style>
		<script type = "text/javascript">
			window.onload = function(){
				registerNavBar();
				registerSideBar();
			}

			function registerNavBar() {
				document.getElementById("logo").onclick = linkHome;
				var divs = document.getElementById("navbar").children;
				divs[0].onclick = linkAbout;
				divs[1].onclick = linkLogin;
				if(<%= session.getAttribute("logged_in") %>){
					divs[1].children[0].innerHTML = "Sign Out";
					divs[1].onclick = signOut;
					divs[2].setAttribute("class", "item");
					divs[2].onclick = linkQuiz;
					divs[3].setAttribute("class", "item");
					divs[3].onclick = linkResuts;
					divs[4].setAttribute("class", "item");
					divs[4].onclick = linkProfile;
				}
			}
			function linkHome() {
				window.location = "home.jsp";
			}
			function linkAbout() {
				window.location = "index.jsp";
			}
			function linkLogin() {
				window.location = "login.jsp";
			}
			function linkQuiz() {
				window.location = "quiz.jsp";
			}
			function linkResuts() {
				window.location = "resuts.jsp";
			}
			function linkProfile() {
				window.location = "profile.jsp";
			}
			function signOut() {
				window.location = "sign-out.jsp";
			}
			function registerSideBar() {
				if(<%= session.getAttribute("logged_in") %>){
					document.getElementById("sidebar").innerHTML =
					"<h4>You are now signed in as " + "<%= session.getAttribute("current_username") %>" + "." + "</h4>";
				}
			}
		</script>
	</head>
	<body>
		<div id="container">
			<div id="logo">
				<div id = "3P">
					<h1>3  P</h1>
				</div>
				<div id = "quiz">
					<h3>QUIZ</h3>
				</div>
			</div>
			<div id="header">
				<h1 id="title">PROGRAMMING PERSONALITY PROFILE</h1>
			</div>
			<div id="navbar">
				<div class="item" id = "i1">
					<h4>About</h4>
				</div>
				<div class="item" id = "i2">
					<h4>Sign in or Register</h4>
				</div>
				<div class="disableditem" id = "i3">
					<h4>Take the Quiz</h4>
				</div>
				<div class="disableditem" id = "i4">
					<h4>View Past Results</h4>
				</div>
				<div class="disableditem" id = "i5">
					<h4>Profile Information</h4>
				</div>
			</div>
			<div id="main">
				<h2>
					Welcome to the Programming Personality Profile website!
					<br>
				</h2>
				<p>
					This project was developed by Hayden Crawford, Darren Funes,
					and Kylie Anderson to create a fun classification system for 
					programmers and programming students.<br><br>
					<a href="login.jsp">Log in</a> and take the quiz to find out what <a href="index.jsp">
					type of programmer</a> you are!
				</p>
			</div>
			<div id="sidebar">
				<h4>You are not currently signed in.<br></h4>
				<p>
					Sign in to take the test, save your information, and print
					your results.
				</p>
			</div>
			<div id="footer">
				<hr>
				<br>
				<p>Made by Hayden Crawford and Kylie Anderson</p>
			</div>
		</div>
	</body>
</html>