<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Index</title>
</head>
<body>
<h3>${message}</h3>
<a href="./Aindex">返回上层</a>
<a href="./AMusicAlbum">专辑管理</a>
<hr/>
<form action="./AMusic">

<label>搜专辑</label><input type="text" name="album"/>
<button type="submit">Serch</button>
</form>
<hr/>
<table>
<tr>
	<th>ID</th>
	<th>歌曲名</th>
	<th>歌手</th>
	<th>专辑</th>
	<th>操作</th>
</tr>
<c:forEach items="${list}" var="music">
<tr>
	<td>${music.id}</td>
	<td>${music.title}</td>
	<td>${music.artist}</td>
	<td>${music.album}</td>
	<td><a href="./AMusicFix?id=${music.id}" }>修改</a><a href="./AMusicDel?id=${music.id}">删除</a></td>
</tr>
</c:forEach>
</table>

</body>
</html>