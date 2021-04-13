<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.apache.tomcat.util.descriptor.tld.TaglibXml"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/checkEmailExist.js"></script>

<link rel="stylesheet" href="css/mycss.css" />

</head>
<body>
	<h1>Hien thi du lieu</h1>
	<table border="1">
		<c:forEach var="room" items="${list2}" varStatus="loop">
			<tr>
				<td>${room.id }</td>
				<td>${room.title }</td>
				<td>${room.address }</td>
				<td>${room.price }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>