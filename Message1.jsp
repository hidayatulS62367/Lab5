<%-- 
    Document   : Message1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page info="Using JSP Standard Action to call JavaBeans"%>
<%@page import="java.util.Date, lab5.com.Message"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Scriplet</title>
    </head>
    <body text="purple">
        <h1 style="color: black;">Using JSP Scriplet to call JavaBeans</h1>
        <%
            Message objMsg = new Message();
            
            objMsg.setMsg("Welcome to CSE3209 course ... !");
            
            out.println("<p>" + objMsg.getMsg() + "</p>");
            
            out.println("<p>Current date is " + new java.util.Date() + "</p>");
        %>
    </body>
</html>
