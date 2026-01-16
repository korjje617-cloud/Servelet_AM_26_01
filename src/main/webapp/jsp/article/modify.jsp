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

</head>
<body>
	<a href="../home/main">메인으로 이동</a>

	<h1><%=articleRow.get("id")%>번 게시글 수정
	</h1>

	<form action="doModify" method="POST">
		<div>
			<input name="id" type="hidden" value="<%=articleRow.get("id")%>" />
		</div>

		<div>
			번호 :
			<%=articleRow.get("id")%>
		</div>
		<div>
			날짜 :
			<%=articleRow.get("regDate")%>
		</div>
		<br />
		<div>
			<input name="title" type="text" placeholder="제목을 입력하세요"
				value="<%=articleRow.get("title")%>" />
		</div>
		<br />
		<div>
			<textarea name="body" type="text" placeholder="내용을 입력하세요"><%=articleRow.get("body")%></textarea>
		</div>
		<br />
		<div>
			<input type="submit" value="수정" />
		</div>
	</form>


</body>
</html>