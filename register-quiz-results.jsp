<%@page import = "java.sql.*"%>
<!DOCTYPE HTML>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<script>
			<%
			int a=0, b=0, c=0, d=0;
			boolean noconnection = false;
                String temp = request.getParameter("whitespace");
				String errormessage = "";
				if(temp.equals("a")){
					a++;
					c++;
				}else{
					b++;
					d++;
				}
				temp = request.getParameter("group");
				if(temp.equals("a")){
					a++;
					b++;
				}else{
					c++;
					d++;
				}
				temp = request.getParameter("plan");
				if(temp.equals("a")){
					a++;
					b++;
				}else{
					c++;
					d++;
				}
				temp = request.getParameter("speak");
				if(temp.equals("a")){
					a++;
					d++;
				}else{
					b++;
					c++;
				}
				temp = request.getParameter("text");
				if(temp.equals("a")){
					b++;
				}else{
					a++;
					c++;
					d++;
				}
				temp = request.getParameter("drink");
				if(temp.equals("a")){
					a++;
				}else if(temp.equals("b")){
					b++;
				}else if(temp.equals("c")){
					c++;
				}else{
					d++;
				}
				temp = request.getParameter("lang");
				if(temp.equals("a")){
					a++;
				}else if(temp.equals("b")){
					b++;
				}else if(temp.equals("c")){
					c++;
				}else{
					d++;
				}
				temp = request.getParameter("comments");
				if(temp.equals("a")){
					a++;
				}else if(temp.equals("b")){
					b++;
				}else if(temp.equals("c")){
					c++;
				}else{
					d++;
				}
				temp = request.getParameter("start");
				if(temp.equals("a")){
					a++;
				}else if(temp.equals("b")){
					b++;
				}else if(temp.equals("c")){
					c++;
				}else{
					d++;
				}
				temp = request.getParameter("stuck");
				if(temp.equals("a")){
					a++;
				}else if(temp.equals("b")){
					b++;
				}else if(temp.equals("c")){
					c++;
				}else{
					d++;
				}
				temp = request.getParameter("priority");
				if(temp.equals("a")){
					a++;
					a++;
				}else if(temp.equals("b")){
					b++;
					b++;
				}else if(temp.equals("c")){
					c++;
					c++;
				}else{
					d++;
					d++;
				}
				temp = request.getParameter("because");
				if(temp.equals("a")){
					a++;
				}else if(temp.equals("b")){
					b++;
				}else if(temp.equals("c")){
					c++;
				}else{
					d++;
				}
				String personality = "";
				if(a > b && a > c && a > d){
					personality = "Code Cowboy";
				}else if(b > a && b > c && b > d){
					personality = "The Ninja";
				}else if(c > a && c > b && c > d){
					personality = "The Magician";
				}else if(d > a && d > b && d > c){
					personality = "The Ruler";
				}else{
					personality = "Code Cowboy";
				}
			
			try{
				String dbURL = "jdbc:mysql://localhost:3306/usr?serverTimezone=UTC";
				Connection connection = DriverManager.getConnection(dbURL, "root", "M6fe1b60gfpj57ne");
				String query = "REPLACE INTO ppp(username, personality) VALUES (?, ?);";
				PreparedStatement pstmt = connection.prepareStatement(query);
				pstmt.setString(1, (String)session.getAttribute("current_username"));
				pstmt.setString(2, personality);
				pstmt.executeUpdate();
				connection.close();
			}catch(SQLException e){
				noconnection = true;
				errormessage = e.getMessage();
			}
			%>
			
            window.onload = function(){
				if (<%=noconnection%>) {
					window.alert("<%=errormessage%>");
					window.location.replace("quiz.jsp");
				} else {
					window.location.replace("resuts.jsp");
				}
			}
		</script>
	</head>
	<body>
	</body>
</html>