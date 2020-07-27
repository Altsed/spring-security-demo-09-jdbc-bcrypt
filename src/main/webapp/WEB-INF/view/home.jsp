<%--
  Created by IntelliJ IDEA.
  User: SEVEN-WORK
  Date: 19.06.2020
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
</head>
<body>
    <h2> Wilkommen to home page! Silly Goose!   </h2>
<hr>
    <!-- Display User and roles -->
    <p>
    User: <security:authentication property="principal.username" />
    <br><br>
        Role(s): <security:authentication property="principal.authorities" />
    </p>
    <hr>
    <security:authorize access="hasRole('MANAGER')">
    <!-- Add link to point to /leaders ... this is only for managers-->
    <p>
        <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting
        (Only for Manageer peeps)</a>
    </p>

    <hr>
    </security:authorize>
    <hr>

    <security:authorize access="hasRole('ADMIN')">
    <!-- Add link to point to /systems ... this is only for managers-->
    <p>
        <a href="${pageContext.request.contextPath}/systems">Admin Meeting
            (Only for ADMIN peeps)</a>
    </p>
    <hr>
    </security:authorize>

    <!-- Add a logout button-->
<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout"/>

    <!-- -->

</form:form>
</body>
</html>
