<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>入力画面</title>
</head>
<form action="BMIServlet" method="post">
<h1>BMI</h1>
身長<input type="text" name="height" id="height"  value="">
体重<input type="text" name="weight" id="weight"  value="">
<input type="submit" value="登録">
</form>
</body>
</html>