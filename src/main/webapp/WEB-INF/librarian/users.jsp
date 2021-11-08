<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<fmt:setLocale value="${sessionScope.locale}"/>
<fmt:setBundle basename="resource"/>

<html lang="${sessionScope.locale}">
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <c:import url="/WEB-INF/header.jsp"/>
    <div class="row">
        <div class="col fs-5">
            <fmt:message key="users"/>
        </div>
    </div>
    <table class="table">
        <tr>
            <th>id</th>
            <th>UserID</th>
            <th><fmt:message key="patronymic"/></th>
            <th><fmt:message key="author"/></th>
            <th><fmt:message key="place"/></th>
            <th></th>
        </tr>

        <c:forEach items="${list}" var="list">
            <tr>
                <th>${list.id}</th>
                <td>${list.patronymic}</td>
                <td>${list.firstname}</td>
                <td>${list.secondname}</td>
                <td>${list.email}</td>
                <td>
                    <form action="${pageContext.request.contextPath}/library/librarian/viewCards">
                        <input type="hidden" name="userId" value="${list.id}"/>
                        <button class="btn btn-outline-dark btn-sm">
                            <fmt:message key="view"/>
                        </button>
                    </form>

                </td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>
