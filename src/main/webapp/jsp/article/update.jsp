<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Map<String, Object> articleRow = (Map<String, Object>) request.getAttribute("articleRow");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<style>
table>thead>tr>th, table>tbody>tr>td {
	padding: 10px;
}
</style>
</head>
<body>

	<a href="../home/main">메인으로 이동</a>

	<h1><%=articleRow.get("id")%> 번 게시글 수정</h1>

	<form action="doUpdate" method="POST">
	
		<br />
		
		<div>
			<input name="title" type="text" value="<%=articleRow.get("title")%>"/>
		</div>
		
		<br />
		
		<div>
			<textarea name="body" style="text"><%=articleRow.get("body")%></textarea>
		</div>
		
		<br />
		
		<div>
			<input type="submit" value="수정" />
		</div>

	</form>

</body>
</html>
