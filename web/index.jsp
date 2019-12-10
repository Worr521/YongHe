<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/10
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8"/>
</head>
<!--
frameset标签必须要放在head和body之间
 -->
<frameset rows="14%,86%" frameborder="0">
  <frame src="_top.jsp"/>
  <frameset cols="18%,82%">
    <frame src="_left.jsp" />
    <frame src="_right.jsp" name="rightFrame"/>
  </frameset>
</frameset>

<body>

</body>
</html>