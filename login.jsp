<%@page import = "java.sql.*"%>
<!DOCTYPE HTML>
<html lang="en" style="background-color:#e8e8e8;">
	<head>
		<meta charset="utf-8"/>
		<title>Login Page</title>
		<meta name="author" content="Hayden Crawford,Kylie Anderson">
		<meta name="description" content="Programming Personality Profile">
		<meta name="keywords" content="test,quiz,personality,programming,programmer">
		<style>

            /* Full-width input fields */
            input[type=text], input[type=password] {
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
					'main main main main main main'
					'main main main main main main';
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
            #login{
                padding: 10px;

            }
            .password {
                float: right;
                padding-top: 16px;
                }
		</style>
		<script src="login.js"></script>
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
				<div class="login">
					<form onsubmit="login()" method="POST">
						<label for="uname_login"><b>Username</b></label>
						<input type="text" placeholder="Enter Username" name="uname_login" required id = "uname_login" pattern = "[A-Za-z0-9]{6,}"
						
						title = "6 or more characters with no punctuation" maxlength = "16">
						<label for="password"><b>Password</b></label>
						<input type="password" placeholder="Enter Password" required name="pass" id = "password" pattern = "[A-Za-z0-9]{8,}"
						
						title = "8 or more characters with no punctuation" maxlength = "16">
						<button id = "submit">Login</button>
					</form>
					<p>
						Don't have an account yet?
						<a href="new-account.jsp">Click here</a>
						to register.
					</p>
				</div>
			
			</div>
        </div>

			<%
		String username = request.getParameter("uname_login"); 
		String password = request.getParameter("pass");
		
		String query1 = "SELECT username, password FROM account WHERE username= ? AND password= ?";
		//String query2 = "SELECT * FROM n"; 
		
		try{
			String dbURL = "jdbc:mysql://localhost:3306/user?serverTimezone=UTC";
			Connection connection = DriverManager.getConnection(dbURL, "root", "");	
			//out.println("Database successfully opened");
			PreparedStatement pstmt = connection.prepareStatement(query1);
			pstmt.setString(1, username);
			pstmt.setString(2, password);

			ResultSet rs = pstmt.executeQuery(query1);
		
			if(rs.next())
                out.println("Valid Login.");
            else
                out.println("Invalid login credentials");
			connection.close();
			
		}catch(SQLException e){
				out.println("SQLEception caught: " + e.getMessage());
		}

		%>
            
	</body>
</html>