<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import=" com.sboot.laptopManagement.entity.Laptop"%>
    <%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<%
		String s = (String)request.getAttribute("type");
		if(s.equals("single")){
			Laptop l = (Laptop)request.getAttribute("prd");
			out.println("<table class='table table-danger table-hover'><tr><th>laptop Id</th><th>laptop Name</th><th>laptop color</th><th>laptop Cost</th><th>laptop quantity</th></tr>");
			out.println("<tr><td>"+l.getLid()+"</td><td>"+l.getLname()+"</td><td>"+l.getLcolor()+"</td><td>"+l.getLcost()+"</td><td>"+l.getQuantity()+"</td></tr></table>");
		}
		else if(s.equals("list"))
		{
			List<Laptop> lp = (List<Laptop>)request.getAttribute("plist");
			out.println("<table class='table  table-danger table-hover'><tr><th>laptop Id</th><th>laptop Name</th><th>laptop color</th><th>laptop Cost</th><th>laptop quantity</th></tr>");
			for(Laptop l:lp){
				out.println("<tr><td>"+l.getLid()+"</td><td>"+l.getLname()+"</td><td>"+l.getLcolor()+"</td><td>"+l.getLcost()+"</td><td>"+l.getQuantity()+"</td></tr>");
			}
			out.println("</table>");
		}
			
		
	%>

</body>
</html>