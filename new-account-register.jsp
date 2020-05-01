<%@page import = "java.sql.*"%>
<!DOCTYPE HTML>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<script>
			<%
			boolean logged_in = false;
			boolean baduser = false;
			String username = request.getParameter("uname"); 
			String password = request.getParameter("password");
			String errormessage = "";
			
			String query2 = "INSERT INTO acc(username, pass) VALUES(?,?);"; 
			
			try{
				String dbURL = "jdbc:mysql://localhost:3306/usr";
				Connection connection = DriverManager.getConnection(dbURL, "root", "M6fe1b60gfpj57ne");	
				PreparedStatement pstmt = connection.prepareStatement(query2);
				pstmt.setString(1, username);
				pstmt.setString(2, password);
				int r = pstmt.executeUpdate();
				session.setAttribute("current_username", username);
				session.setAttribute("logged_in", true);
				logged_in = true;
				connection.close();
			}catch(SQLException e){
				int error = e.getErrorCode();
				if(error == 1062){
					baduser = true;
				} else {
					errormessage = e.getMessage();
				}
			}
			%>
			window.onload = function(){
				if (<%= logged_in %>) {
					window.alert("Account created Successfully");
					window.location.replace("index.jsp");
				} else if (<%= baduser %>) {
					window.alert("Username already in use");
					window.location.replace("new-account.jsp");
				} else {
					window.alert("<%=errormessage%>")
					window.location.replace("new-account.jsp");
				}
			}
		</script>
	</head>
	<body>
	</body>
</html>
		