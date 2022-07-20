<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ヘルスケア - TODO画面</title>

<link rel="shortcut icon" href="images/favicon.ico">

<script src="js/jquery-3.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/style.css">

<script type="text/javascript">
function selectboxChange() {
	var row = document.getElementById("index").selectedIndex + 1;
	var table = document.getElementById('targetTable');
	document.getElementById("important").options[(5 - table.rows[row].cells[1].innerText)].selected = true;
	document.getElementById('info').value = table.rows[row].cells[2].innerText;
	document.getElementById('deadline').value = table.rows[row].cells[3].innerText;
}
</script>

</head>

<body onload="selectboxChange();">
<div class="container">

<header>
	<h1><a href="MainServlet">へるすけあ</a></h1>
	<a href="LogoutServlet" class="block-right">ログアウト</a>
	<a href="MainServlet" class="block-left">&lt;&lt;メインへ</a>
	<img class="profile-img profile-fix-header" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
</header>

<h2>TODO</h2>

<p class="error">${errorMsg}</p>

<hr>

<section>
	<form action="TodoRegistServlet" method="post">
		<select class="form-select" name="important">
			<option value="5">5</option>
			<option value="4">4</option>
			<option value="3">3</option>
			<option value="2">2</option>
			<option value="1">1</option>
		</select>
		<input type="text" name="info" size="20" value="" placeholder="内容">
		<input type="date" name="deadline">
		<input type="submit" value="登録">
	</form>
</section>

<hr>

<section>
	<div class="table-responsive">
		<table id="targetTable" class="table table-striped">
		<thead>
			<tr>
				<th>No</th>
				<th>重要度</th>
				<th>内容</th>
				<th>期日</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="todo" items="${todoList}" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${todo.important}</td>
					<td>${todo.info}</td>
					<td>${todo.deadline}</td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
</section>

<hr><hr>

<section>
	<h4>変更</h4>
	<form action="TodoUpdateServlet" method="post">
		<select class="form-select" name="index" id="index" onchange="selectboxChange();">
			<c:forEach items="${todoList}" varStatus="status">
				<option value="${status.index}">${status.count}</option>
			</c:forEach>
		</select><br><br>
		<select class="form-select" name="important" id="important">
			<option value="5">5</option>
			<option value="4">4</option>
			<option value="3">3</option>
			<option value="2">2</option>
			<option value="1">1</option>
		</select>
		<input type="text" name="info" id="info" size="20" value="">
		<input type="date" name="deadline" id="deadline" value="">
		<input type="submit" value="変更">
	</form>
</section>

<hr>

<section>
	<h4>削除</h4>
	<form action="TodoRemoveServlet" method="post">
		<select class="form-select" name="index">
			<c:forEach items="${todoList}" varStatus="status">
				<option value="${status.index}">${status.count}</option>
			</c:forEach>
		</select>
		<input type="submit" value="削除">
	</form>
</section>

</div>
</body>
</html>