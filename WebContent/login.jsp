<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ヘルスケア - ログイン画面</title>


<script src="js/jquery-3.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>
<div class="container">

<header>
	<h1>へるすけあ</h1>
</header>

<section>
	<div class="card">
		<p class="error">${errorMsg}</p>

		<form action="LoginServlet" method="post">
			<input class="form-control" type="text" name="name" placeholder="ユーザ名">
			<input class="form-control" type="password" name="pass" placeholder="パスワード">
			<br>
			<input class="btn btn-lg btn-primary btn-block" type="submit" value="ログイン">
		</form>
	</div>
</section>

</div>
</body>
</html>
