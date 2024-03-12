<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Books</title>
    <link href="${pageContext.request.contextPath}/static/styles/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div>
        <c:forEach items="${books}" var="book">
            <div>${book.id}</div>
            <a href="/books/${book.id}">${book.name}</a>
            <div>${book.author}</div>
            <br>
        </c:forEach>
    </div>
</body>
</html>
