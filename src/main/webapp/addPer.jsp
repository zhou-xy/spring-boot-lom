<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>main</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h3>欢迎---${sessionScope.login.realname}</h3>
<form method="post" action="${pageContext.request.contextPath}/per/addPer">
    用户名：<input name="name" id="name" type="text"/><br/>
    手机：<input name="mobile" id="mobile" type="text"/><br/>
    电话：<input name="telphone" type="text"/><br/>
    邮箱：<input name="email" type="text"/><br/>
    城市：<input name="city" type="text"/><br/>

    <input type="submit" value="add"/>
</form>
</body>

</html>