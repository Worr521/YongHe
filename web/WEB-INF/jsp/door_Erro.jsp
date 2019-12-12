<%@ page pageEncoding="utf-8"%>
<%-- 引入JSTL标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>门店管理</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<style type="text/css">
body {
	font-family: "微软雅黑";
	background-color: #EDEDED;
}

h2 {
	text-align: center;
}

table {
	width: 96%;
	margin: 0 auto;
	text-align: center;
	border-collapse: collapse;
	font-size: 16px;
}

td, th {
	padding: 5px;
}

th {
	background-color: #DCDCDC;
	width: 120px;
}

th.width-40 {
	width: 40px;
}

th.width-70 {
	width: 70px;
}

th.width-80 {
	width: 80px;
}

hr {
	margin-bottom: 20px;
	border: 1px solid #aaa;
}

#add-door {
	text-align: center;
	font-size: 20px;
}
h4{
	text-align: center;
}
</style>
</head>
<body>
	<!-- body-start  -->
	<h2>删除失败</h2>
	<h4>该门店下存在至少有一条订单信息！</h4>
	<h4>请删除该门店下的订单信息后再试！</h4>
	<h4>
	<a style="text-align: center;" href="doorList">返回</a>
	</h4>
</body>
<!-- body-end  -->
</html>



