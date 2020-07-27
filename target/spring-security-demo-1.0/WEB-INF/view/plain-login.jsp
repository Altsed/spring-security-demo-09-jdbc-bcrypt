<%--
  Created by IntelliJ IDEA.
  User: SEVEN-WORK
  Date: 21.06.2020
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Custom Login Page</title>
    <style>
        .failed{
            color: red;
        }
    </style>
</head>
<body>
<h3> My Custom Login Page</h3>
    <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
                method="post">
        <!-- Check for login error -->
        <c:if test="${param.error != null}">
            <i class="failed">Sorry! You entered invalid login/password.</i>
        </c:if>

        <p>
            User name: <input type="text" name="username">
        </p>
        <p>
            Password: <input type="text" name="password">
        </p>
        <input type="submit" value="Login">
    </form:form>

</body>
</html>
