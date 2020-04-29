<%@page import = "java.sql.*"%>
<!DOCTYPE HTML>
<html lang="en" style="background-color:#e8e8e8;">
	<head>
		<title>Profile Page</title>
		<meta charset="utf-8"/>
		<meta name="author" content="Hayden Crawford,Kylie Anderson">
		<meta name="description" content="Programming Personality Profile">
		<meta name="keywords" content="test,quiz,personality,programming,programmer">
		<style>

            /* Full-width input fields */
            input[type=first-name], input[type=last-name], input[type=dob], input[type=email] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            }

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
				cursor:pointer;
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
            #profile{
                padding: 10px;

            }
            .psw {
                float: right;
                padding-top: 16px;
                }
        </style>
         <script src="profile.js"></script>
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
                <form onsubmit="update()" method="POST">
                     <div class="profile">
                        <label><b>First Name</b></label>
						<input type="text" placeholder="Enter First Name" name="FirstName" required id = "first_name">
                        <label><b>Last Name</b></label>
                        <input type="text" placeholder="Enter Last Name" name="LastName" required id = "last_name">
			
						<label><b>Date of Birth</b></label>
                        <input type="date" name="DOB" required id = "DOB"><br>
                        <br>
                        <label><b>Email</b></label>
                        <input type="email" placeholder="Enter Email" name="EMAIL" required id = "email">
                        <button type = "submit" id = "submit">Update</button>
                       
                    </div>
                </form>
			</div>
			<div id="sidebar">
				<h4>You are not currently signed in.<br></h4>
				<p>
					Don't have an account yet?
					<a href="new-account.jsp">Click here</a>
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