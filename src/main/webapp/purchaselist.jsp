<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
   <%@ page import="com.sboot.laptopManagement.entity.Purchase" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body{
   margin: 0;
   padding: 0;
   font-family: Arial;
}
table, tr, th, td{
   width: 800px;
   margin: auto;
   font-size: 30px;
   padding: 20px;
   text-align: center;
   border: 2px solid #000;
}

</style>
</head>
<body>

<%
	List<Purchase> pl = (List<Purchase>)request.getAttribute("list");
	out.println("<table class='table'><tr><th>Purchase ID</th><th>Laptop ID</th><th>User ID</th><th>Cost</th></tr><tbody class='table table-striped'");
	for(Purchase p: pl){
		out.println("<tr><td >"+p.getPid()+"</td><td>"+p.getLid()+"</td><td>"+p.getUid()+"</td><td>"+p.getPcost()+"</td></tr>");
	}
	out.println("</tbody></table>");
%>

</body>
</html>