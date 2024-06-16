<%-- 
    Document   : processUser
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p{
                font-family: monospace;
                font-size: 1.5em;
                color: blueviolet;
            }
        </style>
    </head>
    <body>
        <h1>Retrieve info using c:param & display it using c:out</h1>
        <p>First Name: <c:out value="${param.firstName}"/></p>
        <p>Surname: <c:out value="${param.surName}"/></p>
        <p>Gender: <c:out value="${param.gender}"/></p>
        <p>Type of User: <c:out value="${param.userType}"/></p>
        <p>Prefer Language: 
            <c:forEach var="value" items="${paramValues.preferLang}">
                <c:out value="${value}"/>
            </c:forEach>
        </p>
    </body>
</html>
