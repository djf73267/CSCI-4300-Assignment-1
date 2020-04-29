<%@page import = "java.sql.*"%>
<!DOCTYPE HTML>
<html lang="en" style="background-color:#e8e8e8;">
	<head>
		<title>Quiz</title>
		<meta name="author" content="Hayden Crawford,Kylie Anderson">
		<meta name="description" content="Programming Personality Profile">
		<meta name="keywords" content="test,quiz,personality,programming,programmer">
		<meta charset="UTF-8">
		<style>
			#container {
				display:grid;
				grid-template-areas:
					'logo header header header header header'
					'logo navbar navbar navbar navbar navbar'
					'ppq ppq ppq ppq ppq sidebar'
					'ppq ppq ppq ppq ppq footer';
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
				cursor:default;
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
			#ppq {
				grid-area:ppq;
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

		<script src="quiz.js"></script>
	</head>
	<body>
		<div id="container">
            <div id="logo">
                <h1>3  P</h1>
                <h3>QUIZ</h3>
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
            

			<div id="ppq">

				<h3>Complete the form below and click "Submit" when you are finished.</h3>
				<br>

				<form name="ppquiz" onsubmit="submitForm()" action="resuts.jsp" method="POST">
                    White space should be used: <br>
                    <input type="radio" id="1a" name="whitespace" value="a" required>
                    <label for="1a">Everywhere</label><br>
                    <input type="radio" id="1b" name="whitespace" value="b">
                    <label for="1b">Sparingly</label><br><br>

                    Do you prefer to: <br>
                    <input type="radio" id="2a" name="group" value="a" required>
                    <label for="2a">Work alone</label><br>
                    <input type="radio" id="2b" name="group" value="b">
                    <label for="2b">Work in a group</label><br><br>

                    What percent of time do you spend planning before you begin a project? <br>
                    <input type="radio" id="3a" name="plan" value="a" required>
                    <label for="3a">25%-The best way to complete a task is plan as you go</label><br>
                    <input type="radio" id="3b" name="plan" value="b">
                    <label for="3b">50%-If something is worth doing it's worth doing right</label><br><br>

					In class you: <br>
					<input type="radio" id="12a" name="speak" value="a" required>
                    <label for="12a">Speak often</label><br>
                    <input type="radio" id="12b" name="speak" value="b">
					<label for="12b">Keep to yourself</label><br><br>
					
					Which text editor do you prefer?<br>
					<input type="radio" id="13a" name="text" value="a" required>
                    <label for="13a">VIM</label><br>
                    <input type="radio" id="13b" name="text" value="b">
					<label for="13b">EMACS</label><br><br>

					<hr><br>
					
                    What is your go-to drink when programming? <br>
                    <input type="radio" id="4a" name="drink" value="a" required>
                    <label for="4a">Coffee</label><br>
                    <input type="radio" id="4b" name="drink" value="b">
                    <label for="4b">Red Bull</label><br>
                    <input type="radio" id="4c" name="drink" value="c">
                    <label for="4c">Yerba Mate</label><br>
                    <input type="radio" id="4d" name="drink" value="d">
                    <label for="4d">Just water is fine</label><br><br><br>

                    Which is your favorite board game?<br>
                    <input type="radio" id="5a" name="game" value="a" required>
                    <label for="5a">Apples to Apples</label><br>
                    <input type="radio" id="5b" name="game" value="b">
                    <label for="5b">Connect four</label><br>
                    <input type="radio" id="5c" name="game" value="c">
                    <label for="5c">Chess</label><br>
                    <input type="radio" id="5d" name="game" value="d">
                    <label for="5d">Monopoly</label><br><br><br>

                    Which programming language do you prefer?<br>
                    <input type="radio" id="6a" name="lang" value="a" required>
                    <label for="6a">C, C++</label><br>
                    <input type="radio" id="6b" name="lang" value="b">
                    <label for="6b"></label>HTML<br>
                    <input type="radio" id="6c" name="lang" value="c">
                    <label for="6c"></label>Java<br>
                    <input type="radio" id="6d" name="lang" value="d">
                    <label for="6d"></label>Python<br><br><br>

                    Comments should be used:<br>
                    <input type="radio" id="7a" name="comments" value="a" required>
                    <label for="7a">If there's time</label><br>
                    <input type="radio" id="7b" name="comments" value="b">
                    <label for="7b">In line with the project requirements. No more, no less.</label><br>
                    <input type="radio" id="7c" name="comments" value="c">
                    <label for="7c">To explain anything that may be ambiguous</label><br>
                    <input type="radio" id="7d" name="comments" value="d">
                    <label for="7d">Only when a programmer isn't good enough to explain themselves</label><br><br><br>

                    When do you usually start a programming project?<br>
                    <input type="radio" id="8a" name="start" value="a" required>
                    <label for="8a">The night before it's due</label><br>
                    <input type="radio" id="8b" name="start" value="b">
                    <label for="8b">2-3 days before it's due</label><br>
                    <input type="radio" id="8c" name="start" value="c">
                    <label for="8c">around a week before it's due</label><br>
                    <input type="radio" id="8d" name="start" value="d">
                    <label for="8d">as soon as it's assigned.</label><br><br><br>

                    When you get stuck on a piece of code where is the first place you go for help?<br>
                    <input type="radio" id="9a" name="stuck" value="a" required>
                    <label for="9a">Stack overflow, of course</label><br>
                    <input type="radio" id="9b" name="stuck" value="b">
                    <label for="9b">Look to see if anyone has already had my problem on Piazza or GroupMe</label><br>
                    <input type="radio" id="9c" name="stuck" value="c">
                    <label for="9c">First check the textbook or class notes and slideshows</label><br>
                    <input type="radio" id="9d" name="stuck" value="d">
                    <label for="9d">I don't get stuck.</label><br><br><br>

                    When coding I prioritize: <br>
                    <input type="radio" id="10a" name="priority" value="a" required>
                    <label for="10a">Effectiveness, counting lines is not important to me</label><br>
                    <input type="radio" id="10b" name="priority" value="b">
                    <label for="10b">Efficiency and speed, the fewer lines the faster</label><br>
                    <input type="radio" id="10c" name="priority" value="c">
                    <label for="10c">Organization and usability, this probably means more lines</label><br>
                    <input type="radio" id="10d" name="priority" value="d">
                    <label for="10d">Perfection, fewer lines fewer problems</label><br><br><br>

                    I am a programmer because: <br>
                    <input type="radio" id="11a" name="because" value="a" required>
                    <label for="11a">The coding itself isn't necessarily fun, but I like the things I can make.</label><br>
                    <input type="radio" id="11b" name="because" value="b">
                    <label for="11b">I can make a lot of money, but it's not my passion.</label><br>
                    <input type="radio" id="11c" name="because" value="c">
                    <label for="11c">I like programming because I can be creative, I enjoy the challenge</label><br>
                    <input type="radio" id="11d" name="because" value="d">
                    <label for="11d">I'm good at it. I've been coding for a long time.</label><br><br><br>


					<input type="submit" value="Submit" >
					
                </form>
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