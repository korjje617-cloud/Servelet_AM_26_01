<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
</head>
<body>

	<h1>게시글 목록</h1>

	<ul>
		<h2>수동 추가</h2>
		<li><%=articleRows.get(0).get("id")%> 번, <%=articleRows.get(0).get("regDate")%>,
			<%=articleRows.get(0).get("title")%>, <%=articleRows.get(0).get("body")%></li>

		<li><%=articleRows.get(1).get("id")%> 번, <%=articleRows.get(1).get("regDate")%>,
			<%=articleRows.get(1).get("title")%>, <%=articleRows.get(1).get("body")%></li>

		<li><%=articleRows.get(2).get("id")%> 번, <%=articleRows.get(2).get("regDate")%>,
			<%=articleRows.get(2).get("title")%>, <%=articleRows.get(2).get("body")%></li>
	</ul>

	<ul>
		<h2>자동 추가</h2>
		<%
		for (int i = 0; i < articleRows.size(); i++) {
		%>
		<li><%=articleRows.get(i).get("id")%> 번, <%=articleRows.get(i).get("regDate")%>,
			<%=articleRows.get(i).get("title")%>, <%=articleRows.get(i).get("body")%></li>
		<%
		}
		%>
	</ul>
</body>
</html>