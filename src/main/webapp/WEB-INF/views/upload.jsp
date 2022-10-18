<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사진</title>
</head>
<body>
<img src="assets/1.jpg" width="200" height="200"/>
<br/><br/><br/>

<h1>사진</h1>
<form method="post" action="/resume_detail" enctype="multipart/form-data">
<input type="file" name="file"/>
<button type="submit">파일전송</button>
</form>
</body>
</html>