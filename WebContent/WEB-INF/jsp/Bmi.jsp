<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body background="images/a.jpg">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>入力画面</title>
</head>
<form action="BMIServlet" method="post">
<img class="bmi" src="images/download.jpg">
	<h1>BMI</h1>
	<ul>
		身長と体重を入力してください<br>
		身長は<strong>cm</strong>、体重は<strong>kg</strong>です
	</ul>
	身長<input type="text" name="height" id="height" value=""> 体重<input
		type="text" name="weight" id="weight" value=""> <input
		type="hidden" name="sabun" id="sabun" value="${bmi.sabun}"> <input
		type="submit" value="登録">
		<h3>
		<a href="MainServlet">>>戻る</a>
	</h3>
</form>
</body>
</html>