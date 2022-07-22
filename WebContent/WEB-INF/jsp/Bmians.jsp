<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>BMI結果</title>
<img src="images/bmi.jpg" width="500" height="300">
<style>
strong{
color: red;
}

</style>
</head>
<body>
		<h1>～BMI結果～</h1>
		<p>今回のBMI<strong>${bmi.bmi}</strong></p>
		<p>前回との差分<strong>${bmi.sabun}</strong></p>

</body>
</html>