<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .content {
            width: 950px;
        }

        #All:hover {
            cursor: pointer;
        }

        .content table input {
            width: 15px;
            height: 15px;
        }
    </style>
</head>
<body>
主界面<br>
<a href="/toLogin">${loginState}</a>&emsp;<a href="/toMy">我的淘宝</a>&emsp;<a href="/toCar">购物车</a>

<h1>客户信息列表</h1>
<div class="content">
    <form:form modelAttribute="customer" action="" id="queryFor">
        <table border="1px" cellpadding="5" cellspacing="0">
            <tr>
                <td width="5%" align="center" id="All">全选</td>
                <td width="15%" align="center">客户编号</td>
                <td width="15%" align="center">客户名称</td>
                <td width="15%" align="center">客户负责人</td>
                <td width="18%" align="center">客户信息来源</td>
                <td width="18%" align="center">客户所属行业</td>
                <td width="23%" align="center">创建日期</td>
            </tr>
            <c:forEach var="customer" items="${customers}">
                <tr>
                    <td><input type="checkbox" name="selectCustomerId"></td>
                    <td width="15%" align="center">${customer.customerId}</td>
                    <td width="15%" align="center">${customer.customerName}</td>
                    <td width="15%" align="center">${customer.customerUserName}</td>
                    <td width="18%" align="center">${customer.customerSourceDict}</td>
                    <td width="18%" align="center">${customer.customerIndustryDict}</td>
                    <td width="23%" align="center">${customer.customerDate}</td>
                </tr>
            </c:forEach>
        </table>
    </form:form>
</div>

</body>
</html>
