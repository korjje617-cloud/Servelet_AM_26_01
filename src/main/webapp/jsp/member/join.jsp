<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<h1>회원가입</h1>

	<form action="doJoin" method="POST">

		<div>
			아이디 : <input name="loginId" type="text" required
				placeholder="아이디를 입력하세요" />
		</div>

		<div>
			비밀번호 : <input name="loginPw" type="password" required
				placeholder="비밀번호를 입력하세요" />
		</div>

		<div>
			비밀번호 확인 : <input name="loginPwConfirm" type="password" required
				placeholder="비밀번호를 다시 입력하세요" />
		</div>

		<div>
			이름 : <input name="name" type="text" required placeholder="이름을 입력하세요" />
		</div>

		<div>
			<input type="submit" value="가입하기" />
		</div>

	</form>

</body>
</html>