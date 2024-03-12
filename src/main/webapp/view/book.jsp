<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book</title>
    <script src="${pageContext.request.contextPath}/static/js/main.js"></script>
    <link href="${pageContext.request.contextPath}/static/styles/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div>
        Book id: ${book.id}<br>
        Book name: ${book.name}<br>
        Book author: ${book.author}<br>
    </div>
    <form:form
            method="POST"
            action="/spring-mvc-xml/addEmployee" modelAttribute="book">

        <table>
            <tr>
                <td><form:label path="name">Name</form:label></td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td><form:label path="id">Id</form:label></td>
                <td><form:input path="id"/></td>
            </tr>
            <form:errors path="*"/>
            <tr>
                <td><input type="submit" value="Submit"/></td>
            </tr>
        </table>
    </form:form>

</body>
</html>
