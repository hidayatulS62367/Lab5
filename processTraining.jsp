<%-- 
    Document   : processTraining
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page info="Page to use JavaBeans in Java Scriplet"%>
<%@page import="java.text.DecimalFormat"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Training Registration Acknowledgement</title>
        <%
            String icNo = request.getParameter("ICNo");
            String t_Name = request.getParameter("trainingName");
            String t_Type = request.getParameter("trainingType");
            int p_No = Integer.parseInt(request.getParameter("paxNo"));
            String isStudent = request.getParameter("isStudent");
            
            lab5.com.Register objRegister = new lab5.com.Register();
            objRegister.setIcNo(icNo);
            objRegister.setTrainingName(t_Name);
            objRegister.setTrainingType(t_Type);
            objRegister.setPaxNo(p_No);
            objRegister.setStudent(isStudent);
        %>
        <style>
            p {
                color: #001B94;
            }
        </style>
    </head>
<body>
        <%
            double pricePerPax;
            double amountDue = 0.00;
            double discount = 0.10;
            String isStudentName="";
            String tTypeName="";
            
            if (t_Type.equals("1")){
                tTypeName="C++ Training";
            }else if (t_Type.equals("2")){
                tTypeName="ComprehensiveJava for beginner";
            }else if (t_Type.equals("3")){
                tTypeName="HTML5";
            }else if (t_Type.equals("4")){
                tTypeName="JavaEE";
            }else if (t_Type.equals("5")){
                tTypeName="Android Programming";
            }
            //Determine customer..
            if (isStudent.equals("1")){
                isStudentName = "Yes";
                if (t_Type.equals("1") || t_Type.equals("2")){
                    pricePerPax = 3000.00;
                    amountDue = (double) ((p_No*pricePerPax)-(pricePerPax*(discount)));
                } else if (t_Type.equals("3")) {
                    pricePerPax = 2800.00;
                    amountDue = (double) ((p_No*pricePerPax)-(pricePerPax*(discount)));
                } else if (t_Type.equals("4")) {
                    pricePerPax = 5500.00;
                    amountDue = (double) ((p_No*pricePerPax)-(pricePerPax*(discount)));
                } else if (t_Type.equals("5")) {
                    pricePerPax = 3200.00;
                    amountDue = (double) ((p_No*pricePerPax)-(pricePerPax*(discount)));
                }
            } else if (isStudent.equals("0")){
                isStudentName = "No";
                if (t_Type.equals("1") || t_Type.equals("2")){
                    pricePerPax = 3000.00;
                    amountDue = (double) (p_No*pricePerPax);
                } else if (t_Type.equals("3")) {
                    pricePerPax = 2800.00;
                    amountDue = (double) (p_No*pricePerPax);
                } else if (t_Type.equals("4")) {
                    pricePerPax = 5500.00;
                    amountDue = (double) (p_No*pricePerPax);
                } else if (t_Type.equals("5")) {
                    pricePerPax = 3200.00;
                    amountDue = (double) (p_No*pricePerPax);
                }
            } 
        %>  
        <%DecimalFormat df = new DecimalFormat("0.00");%>
        <h1>Training Registration Acknowledgement</h1>
        <p>IC No: <%=objRegister.getIcNo()%></p>
        <p>Name: <%=objRegister.getTrainingName()%></p>
        <p>Type of Training: <%=tTypeName%></p>
        <p>Number of Pax: <%=objRegister.getPaxNo()%> person/s</p>
        <p>Student: <%=isStudentName%></p>
        <p>Amount Due: <%= df.format(amountDue)%></p>
    </body>
</html>
