<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/10
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE HTML>
<html>
<head>
  <title>修改订单</title>
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
<h2>修改订单</h2>
<hr/>
<form action="orderUpdate" method="POST">
  <!-- hidden隐藏域,在提交表单时连order.id一起提交 -->
  <input type="hidden" name="id" value="${ order.id }"/>
  <table border="1">
    <tr>
      <td width="30%">所属门店</td>
      <td>
        <select name="doorId">
          <c:forEach items="${ dlist }" var="door">
            <option ${ door.id==order.doorId?"selected='selected'":"" }
                    value="${ door.id }">${ door.name }</option>
          </c:forEach>
        </select>
      </td>
    </tr>
    <tr>
      <td>订单编号</td>
      <td>
        <input type="text" name="orderNo"
               value=""/>
      </td>
    </tr>
    <tr>
      <td>订单类型</td>
      <td>
        <input type="text" name="orderType"
               value=""/>
      </td>
    </tr>
    <tr>
      <td>用餐人数</td>
      <td>
        <input type="text" name="pnum"
               value=""/>
      </td>
    </tr>
    <tr>
      <td>收银员</td>
      <td>
        <input type="text" name="cashier"
               value=""/>
      </td>
    </tr>
    <tr>
      <td>下单时间</td>
      <td>
        <%--<input type="text" name="orderTime"
               value=''/>--%>
        <input type="text" name="orderTime"
                value='<fmt:formatDate value="${ order.orderTime }" pattern="yyyy-MM-dd HH:mm:ss"/>'/>
      </td>
    </tr>
    <tr>
      <td>结账时间</td>
      <td>
        <input type="text" name="payTime"
               value='<fmt:formatDate value="${ order.orderTime }" pattern="yyyy-MM-dd HH:mm:ss"/>'/>
      </td>
    </tr>
    <tr>
      <td>支付方式</td>
      <td>
        <input type="text" name="payType"
               value=""/>

      </td>
    </tr>
    <tr>
      <td>支付金额</td>
      <td>
        <input type="text" name="price"
               value=""/>

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



