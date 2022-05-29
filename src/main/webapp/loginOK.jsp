<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${r }<p>
${sessionScope.accountInfo.nickName }
<button onclick="location.href='LoginController'">ログアウト</button>
<button onclick="location.href='InfoAccountC'">会員情報</button>
</body>
</html>