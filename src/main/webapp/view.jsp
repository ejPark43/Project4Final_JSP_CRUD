<%--
  Created by IntelliJ IDEA.
  User: bag-eunju
  Date: 2023/11/20
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View item</title>

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
      border: 1px solid #ddd;
     width: 300px;
     font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      padding: 8px;
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

.topnav a:hover{
background-color: steelblue;
}
    .topnav a {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      display: block;
       width: 100px;
      height: 20px;

      border: 1px solid #006bb3;
      color: black;
      text-align: center;

      text-decoration: none;
    }
  </style>
</head>
<body>

<%
  BoardDAO boardDAO = new BoardDAO();
  String id=request.getParameter("id");
  BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>View item</h1>
<form action="posts.jsp" method="post">
  <input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
  <table>
    <tr><th>Category: </th><td><%= u.getCategory()%></td></tr>
    <tr><th>Title:</th><td><%= u.getTitle()%></td></tr>
    <tr><th>Writer:</th><td><%= u.getWriter()%></td></tr>
    <tr><th>Content:</th><td><%= u.getContent()%></td></tr>

<%--    <div><a href="posts.jsp">전체 목록 보러가기</a></div>--%>


  </table>
  <div class="topnav"><a href="posts.jsp">View list</a></div>
</form>

</body>
</html>