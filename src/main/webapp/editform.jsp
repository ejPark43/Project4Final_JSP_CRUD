<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
	<style>
		h1 {
			block: display;
			width: 200px;
			text-align:center;
			border-radius: 30px;
			border: 2px solid steelblue;
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			background-color: white;

		}

		td {

			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;

			text-align:center;

		}
		tr:nth-child(even){background-color: #f2f2f2;}

		th {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;

			padding-top: 12px;
			width: 100px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #006bb3;
			color: white;
		}
		div{
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			padding: 2px;
		}


	</style>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
<tr><th>Category:</th><td><input type="text" name="category" value="<%= u.getCategory()%>"/></td></tr>
<tr><th>Title:</th><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
<tr><th>Writer:</th><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
<tr><th>Content:</th><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>