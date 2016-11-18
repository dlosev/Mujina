<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/logout">
    <button style="float: right;">Logout</button>
</a>

<h3>Hello, <span style="color: blue; font-weight: bold;"><%= request.getRemoteUser() %></span>!</h3>
</body>
</html>
