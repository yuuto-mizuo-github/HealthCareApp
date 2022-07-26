<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>筋トレ！！</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

		<header>
			<h1>
				筋トレメニュー
			</h1>
			<a href="MainServlet" class="block-right">>>戻る</a><br>
		</header>
		
	<form action="kintore_recordServlet" method="post">
	<div>
	日付<input type="date" name="deadline" value="" class="hiduke"><br><br>
	</div>
	 <table border="1" bordercolor="#006400" class="table-responsive">
	 <th>
	<input type="checkbox" name="squat" value="">スクワット １００回<br>
	<input type="checkbox" name="situp" value="">腹筋 １００回<br>
	<input type="checkbox" name="pushups" value="">腕立て伏せ １００回<br>
	<input type="checkbox" name="running" value="">ランニング ３０分<br>
	</th>
	</table><br><br>
	<input type="submit" value="登録" class="button">
	
	</form>
</body>
</html>