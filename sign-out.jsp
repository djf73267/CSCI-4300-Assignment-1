<%@page import = "java.sql.*"%>
<!DOCTYPE HTML>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<script>
			<%
			session.removeAttribute("logged_in");
			session.removeAttribute("current_username");
			%>
			window.onload = function(){
				window.alert("Successful Sign Out.");
				window.location.replace("index.jsp");
			}
		</script>
	</head>
	<body>
	</body>
</html>
		