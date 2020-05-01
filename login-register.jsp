<%@page import = "java.sql.*"%>
<!DOCTYPE HTML>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<script>
			<%
			String username = request.getParameter("uname_login"); 
			String password = request.getParameter("pass");
			
			String query1 = "SELECT username, pass FROM acc WHERE username=? AND pass=?;";
			
			boolean nonmatch = false;
			boolean logged_in = false;
			String errormessage = "";
			
			try{
				String dbURL = "jdbc:mysql://localhost:3306/usr";
				Connection connection = DriverManager.getConnection(dbURL, "root", "M6fe1b60gfpj57ne");	
				PreparedStatement pstmt = connection.prepareStatement(query1);
				pstmt.setString(1, username);
				pstmt.setString(2, password);

				ResultSet rs = pstmt.executeQuery();
			
				if(rs.next()) {
					logged_in = true;
					session.setAttribute("current_username", username);
					session.setAttribute("logged_in", true);
				}
				else
					nonmatch = true;
				connection.close();
			}catch(SQLException e){
					errormessage = e.getMessage();
			}
			%>
			window.onload = function(){
				if (<%= logged_in %>) {
					window.alert("Successful log in");
					window.location.replace("index.jsp");
				} else if (<%= nonmatch %>) {
					window.alert("Username and Password are invalid");
					window.location.replace("login.jsp");
				} else {
					window.alert("<%=errormessage%>")
					window.location.replace("login.jsp");
				}
			}
		</script>
	</head>
	<body>
	</body>
</html>
		