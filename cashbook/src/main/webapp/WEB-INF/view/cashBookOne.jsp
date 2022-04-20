<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import ="vo.CashBook" %>
<%
	//컨트롤러 값 받기
	CashBook cashBook = (CashBook)request.getAttribute("cashBook");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<title>cashBookOne</title>
</head>
<body class="container">
	<h1>cashBook 상세보기</h1>
	<table class="table table-dark table-striped">
		<tr>
			<td>cashDate</td>
			<td><%= cashBook.getCashDate() %></td>
		</tr>
		<tr>
			<td>kind</td>
			<td><%=cashBook.getKind()%></td>
		</tr>
		<tr>
			<td>cash</td>
			<td><%= cashBook.getCash() %></td>
		</tr>
		<tr>
			<td>memo</td>
			<td><%= cashBook.getMemo() %></td>
		</tr>
		<tr>
			<td>createDate</td>
			<td><%= cashBook.getCreateDate() %></td>
		</tr>
		<tr>
			<td>updateDate</td>
			<td><%= cashBook.getUpdateDate() %></td>
		</tr>
	</table>
</body>
</html>