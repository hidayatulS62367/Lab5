<%-- 
    Document   : jstlCore1
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSTL tag library</title>
        <style>
            p{
                font-family: monospace;
                font-size: 1.5em;
                color: #FF69B4;
            }
        </style>
    </head>
    <body>
        <h1>Use JSTL's features</h1>
        <c:set var="message" value="Welcome to CSE3209 - Web Application Development courses .. !"/>
        <p><c:out value="${message}"/></p>
    </body>
</html>
