<%@page import = "java.sql.*"%>
<!DOCTYPE HTML>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<script type = "text/javascript">
			<%

			int a=0, b=0, c=0, d=0;

                String temp = request.getParameter("whitespace");
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
				int enum_index;
				if(a > b && a > c && a > d){
					enum_index = 0;
				}else if(b > a && b > c && b > d){
					enum_index = 1;
				}else if(c > a && c > b && c > d){
					enum_index = 2;
				}else if(d > a && d > b && d > c){
					enum_index = 3;
				}else{
					enum_index = 0;
				}


				//localStorage.setItem("max", max);
				
			/*
			

			try{
				String dbURL = "jdbc:mysql://localhost:3306/usr?serverTimezone=UTC";
				Connection connection = DriverManager.getConnection(dbURL, "root", "5051847Ka!");	
				PreparedStatement pstmt = connection.prepareStatement(query2);
				
				connection.close();
			}catch(SQLException e){
				int error = e.getErrorCode();
				if(error == 1062){

				} else {
					errormessage = e.getMessage();
				}
			}
*/
			%>
			
            window.onload = function(){
		
			}
		</script>
	</head>
	<body>

    <%
    out.print(a + " ");
    out.print(b + " ");
	out.print("enum index: " + enum_index);

    %>
	</body>
</html>