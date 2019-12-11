<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/10
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>新增订单</title>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <style type="text/css">
    body{ font-family: "微软雅黑"; background-color: #EDEDED; }
    h2{ text-align: center;font-size:26px; }
    table{ margin: 30px auto; text-align: center; border-collapse:collapse; width:50%; }
    td, th{ padding: 5px;font-size:18px;}
    hr{ margin-bottom:20px; border:1px solid #aaa; }
    input,select,textarea{ width:284px; height:30px; background:#EDEDED; border:1px solid #999; text-indent:5px; font-size:18px; }
    input[type='submit']{ width:130px; height:36px; cursor:pointer; border-radius:5px 5px 5px 5px; background:#ddd; }
    select{text-indent:0px;}
    textarea{height:100px;font-size:22px;}
  </style>

  <script type="text/javascript">
  </script>
</head>
<body>
<h2>新增订单</h2>
<hr/>
<form action="orderAdd" method="POST">
  <table border="1">
    <tr>
      <td width="30%">所属门店</td>
      <td>
        <select name="doorId">
          <c:forEach items="${ dlist }" var="door">
            <option value="${ door.id }">${ door.name }</option>
          </c:forEach>
        </select>
      </td>
    </tr>
    <tr>
      <td>订单编号</td>
      <td>
        <input type="text" name="orderNo"/>
      </td>
    </tr>
    <tr>
      <td>订单类型</td>
      <td>
        <select name="orderType">
          <option>堂食</option>
          <option>打包</option>
          <option>外卖</option>
        </select>
      </td>
    </tr>
    <tr>
      <td>用餐人数</td>
      <td>
        <input type="text" name="pnum"
               value="1"/>
      </td>
    </tr>
    <tr>
      <td>收银员</td>
      <td>
        <input type="text" name="cashier"/>
      </td>
    </tr>
    <tr>
      <td>支付方式</td>
      <td>
        <select name="payType">
          <option>现金</option>
          <option>微支付</option>
          <option>支付宝</option>
          <option>银行卡</option>
        </select>
      </td>
    </tr>
    <tr>
      <td>支付金额</td>
      <td>
        <input type="text" name="price"/>

      </td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" value="提 	交"/>
      </td>
    </tr>
  </table>
</form>
</body>
</html>




