<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        h1 {
            block: display;
            width: 250px;
            text-align:center;
            border-radius: 30px;
            border: 2px solid steelblue;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            background-color: white;

        }

        td {

            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            text-align:left;

        }
        tr{background-color: #f2f2f2;}

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

<h1>Add New Post</h1>
<form action="addpost.jsp" method="post">
<table>
    <tr><th>Category:</th><td><input type="text" name="category"/></td></tr>
    <tr><th>Title:</th><td><input type="text" name="title"/></td></tr>
    <tr><th>Writer:</th><td><input type="text" name="writer"/></td></tr>
    <tr><th>Content:</th><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>

</table>
    <div><a href="posts.jsp">View All Records</a><td align="right"><input type="submit" value="Add Post"/></div>
</form>

</body>
</html>