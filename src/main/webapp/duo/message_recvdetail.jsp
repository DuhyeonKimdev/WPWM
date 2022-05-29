<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="css/message.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	type="text/css" rel="stylesheet" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body style="background-color: #E1EEF5;">
 <table border="1"style="width: 100%; height: 730px;">
 	<tr>
 		<td><h2 style="text-align: center">詳細情報</h2></td>
 	</tr>
 	<tr>
 		<td style="font-size: 20px;">送信者 : ${message.sendname}</td>
 	</tr>
 	<tr>
 		<td style="font-size: 20px;">日付 : <fmt:formatDate value="${message.date}" type="both"
		dateStyle="short" timeStyle="short" /></td>
 	</tr>
 	<tr>
 		<td style="font-size: 20px; vertical-align: top;">&lt;内容&gt;  <br>  ${message.content}</td>
 	</tr>
 	<tr>
 		<td align="center"><button onclick="location.href='MessageRecvlistC'" style="text-align: center">戻る</button></td>
 	</tr>
 </table>
	
	
</body>
</html>