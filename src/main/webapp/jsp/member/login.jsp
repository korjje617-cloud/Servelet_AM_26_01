
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

</head>
<body>
	<a href="../home/main">메인으로 이동</a>

	<h1>로그인</h1>

	<script type="text/javascript">
		function LoginForm__submit(form) {

			let loginId = form.loginId.value.trim();
			let loginPw = form.loginPw.value.trim();

			if (form.loginId.value.length == 0) {
				alert('아이디를 작성하세요');
				return;
			}
			if (loginPw.length == 0) {
				alert('비밀번호를 작성하세요');
				return;
			}

			form.submit();

		}
	</script>

	<form onsubmit="LoginForm__submit(this); return false;"
		action="doLogin" method="POST">
		<div>
			아이디 : <input autocomplete="off" name="loginId" type="text"
				placeholder="아이디를 입력하세요" />
		</div>
		<div>
			비밀번호 : <input autocomplete="off" name="loginPw" type="text"
				placeholder="비밀번호를 입력하세요" />
		</div>

		<div>
			<input type="submit" value="로그인" />
		</div>
	</form>
</body>
</html>