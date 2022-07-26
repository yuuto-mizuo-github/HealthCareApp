<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<body background="images/main.jpg">
<head>
<meta charset="UTF-8">
<title>ヘルスケア - メイン画面</title>

<link rel="shortcut icon" href="images/favicon.ico">

<script src="js/jquery-3.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>
	<div class="container">

		<header>
			<h1>
				<a href="MainServlet"><font color="write">へるすけあ</font></a>
			</h1>
			<a href="LogoutServlet" class="block-right">ログアウト</a>
		</header>

		<section>
			<img class="profile-img" src="images/366TSURUTAMA20211_TP_V4.jpg"
				alt="女性" />
			<h4>${user.name}</h4>
		</section>

		<hr>

		<p class="error">${errorMsg}</p>

		<section>
			<div class="card card-smart">
				<h4>TODO の トピック</h4>
				<a class="card-link-text" href="TodoServlet">>>TODOへ</a><br>

				<c:choose>
					<c:when test="${todoTopic == null}">
						<p>実行待ちのTODOはありません</p>
					</c:when>

					<c:otherwise>
						<div class="table-responsive">
							<table id="targetTable" class="table table-striped">
								<thead>
									<tr>
										<th>重要度</th>
										<th>内容</th>
										<th>期日</th>
										<th>ジャンル</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${todoTopic.important}</td>
										<td>${todoTopic.info}</td>
										<td>${todoTopic.deadline}</td>
										<td>${todoTopic.genre}</td>
									</tr>
								</tbody>
							</table>
							<section></section>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</section>
		<table border="1">
			<tr>
				<th>前回のBMI</th>
				<th>${bmi.bmi}</th>
				<input type="hidden"　name="sabun" value=${bmi.sabun}>
			</tr>
		</table>

	</div>
	<h3>
		<a href="BMI_firstServlet">>>BMI計算画面へ</a>
	</h3>
<h3>
<a href="kintoreServlet">>>筋トレ画面へ</a>
</h3>

</body>
</html>