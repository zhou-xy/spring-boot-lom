<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>main</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<table align="center" width="90%" border="3" cellspacing="1">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Mobile</td>
        <td>Telphone</td>
        <td>Email</td>
        <td>City</td>

        <td>执行操作</td>
    </tr>

    <c:forEach items="${sessionScope.list}" var="list">
        <tr>
            <td>${list.id}</td>
            <td>${list.name}</td>
            <td>${list.mobile}</td>
            <td>${list.telphone}</td>
            <td>${list.email}</td>
            <td>${list.city}</td>

            <td><a href="${pageContext.request.contextPath}/main/delPer.do">delete</a>&nbsp;

                    <%-- <input type="button" value="delete" id='${l.id}' class="delete"/>   <input type="button" value="add" class="add"/> --%>
            </td>
        </tr>
    </c:forEach>

</table>
<h3>
    <a href="${pageContext.request.contextPath}/addPer.jsp">addPer</a>
</h3>
</body>

</html>
