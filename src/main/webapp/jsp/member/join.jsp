<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<h1>회원 가입</h1>

	<script type="text/javascript">
		function JoinForm__submit(form) {

			// 			console.log('form.loginId.value : ' + form.loginId.value);
			// 			console.log('form.loginId.value.trim() : '
			// 					+ form.loginId.value.trim());
			// 			console.log('form.loginId.value.trim : ' + form.loginId.value.trim);
			// 			console.log('form.loginPw.value : ' + form.loginPw.value);
			// 			console.log('form.loginPwConfirm.value : '
			// 					+ form.loginPwConfirm.value);
			// 			console.log('form.name.value : ' + form.name.value);

			// 			form.loginId.value = form.loginId.value.trim();

			let loginId = form.loginId.value.trim();
			let loginPw = form.loginPw.value.trim();
			let loginPwConfirm = form.loginPwConfirm.value.trim();
			let name = form.name.value.trim();

			if (form.loginId.value.length == 0) {
				alert('아이디를 작성하세요');
				return;
			}
			if (loginPw.length == 0) {
				alert('비밀번호를 작성하세요');
				return;
			}
			if (loginPwConfirm.length == 0) {
				alert('비밀번호를 확인하세요');
				return;
			}

			if (name.length == 0) {
				alert('이름을 작성하세요');
				return;
			}

			if (loginPw != loginPwConfirm) {
				alert('비밀번호가 다릅니다');
				form.loginPw.focus();
				return;
			}

			form.submit();

		}
	</script>

	<form onsubmit="JoinForm__submit(this); return false;" action="doJoin"
		method="POST">
		<div>
			아이디 : <input autocomplete="off" name="loginId" type="text"
				placeholder="아이디를 입력하세요" />
		</div>
		<div>
			비밀번호 : <input autocomplete="off" name="loginPw" type="text"
				placeholder="비밀번호를 입력하세요" />
		</div>
		<div>
			비밀번호 확인 : <input autocomplete="off" name="loginPwConfirm" type="text"
				placeholder="비밀번호를 확인하세요" />
		</div>
		<div>
			이름 : <input autocomplete="off" name="name" type="text"
				placeholder="이름을 입력하세요" />
		</div>
		<div>
			<input type="submit" value="가입" />
		</div>
	</form>
</body>
</html>