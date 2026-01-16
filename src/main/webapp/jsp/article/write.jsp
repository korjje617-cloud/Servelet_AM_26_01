<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>

	<a href="../home/main">메인으로 이동</a>

	<h1>게시글 작성</h1>

	<form action="doWrite" method="POST">
	
		<br />
		
		<div>
			<input name="title" type="text" placeholder="제목을 입력하세요" required />
		</div>
		
		<br />
		
		<div>
			<textarea name="body" style="" text" placeholder="내용을 입력하세요" required></textarea>
		</div>
		
		<br />
		
		<div>
			<input type="submit" value="글쓰기" />
		</div>

	</form>

</body>
</html>
