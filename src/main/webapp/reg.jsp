<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<article style="margin-top: 250px;" class="container">
	<div class="regTbl1">
		<a href="edit">Settings</a>
	</div>
	<div class="regTbl2">
		<a href="RegUpdate?id=${reg.id }">パスワード変更</a>
	</div>

	<div class="regTbl3">
		<a href="leave">会員退会</a>
	</div>
</article>
	
	<table >
	<tr>
	<td class="regfont1">ID</td>
	<td class="regfont2">${sessionScope.accountInfo.id }</td>
	</tr>
	<tr>
	<td class="regfont1">ニックネーム</td>
	<td class="regfont2">${sessionScope.accountInfo.nickname }</td>
	</tr>
</table>




</body>
</html>