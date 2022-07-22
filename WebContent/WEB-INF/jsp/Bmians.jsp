<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI結果</title>
</head>
<body>
	<table border="1">
		<caption>BMI結果</caption>
		<tr>
			<th>今回のBMI</th>
			<th>前回との差分</th>
		</tr>

		<tr>
			<td>${bmi.bmi}</td>
			<td>${bmi.sabun}</td>
	</table>


</body>
</html>