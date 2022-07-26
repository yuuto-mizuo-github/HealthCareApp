<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>今日の筋トレ成果</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
		<h1>
				${kintore.deadline}筋トレ成果
			</h1><br><br>
	 <table border="1" class="table-responsive">
    <tr>
      <th>スクワット</th>
      <th>腹筋</th>
      <th>腕立て辞せ</th>
      <th>ランニング</th>
    </tr>
    <tr>
      <td>${kintore.squat }</td>
      <td>${kintore.situp }</td>
      <td>${kintore.pushups }</td>
      <td>${kintore.running }</td>
    </tr>
  </table><br>
		<div  class="btn btn01">
		<a href="MainServlet">>>メイン画面へ</a>
		</div>
</body>
</html>