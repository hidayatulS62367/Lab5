<%-- 
    Document   : registerTraining
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page info="Page to use JavaBeans in Java Scriplet"%>
<%@page import="lab5.com.Register"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaBeans in Java Scriptlet</title>
    </head>
    <body>
        <h1>Register IT Training</h1>
        
        <form name="trainingreg" action="processTraining.jsp" method="post">
            <fieldset> 
                <legend>Training Registration</legend>
                <table>
                    <tr>
                        <td><label>IC No</label></td>
                        <td><input type="text" name="ICNo" value="" placeholder="E.g. 911210-05-1234" size="50"/></td>
                    </tr>
                    <tr>
                        <td><label>Name</label></td>
                        <td><input type="text" name="trainingName" value="" placeholder="Enter your name" size="50"/></td>
                    </tr>
                    <tr>
                        <td><label>Type of Training</label></td>
                        <td><select name="trainingType">
                            <option value="1">C++ Training</option>
                            <option value="2">Java for beginner</option>
                            <option value="3">HTML5</option>
                            <option value="4">JavaEE</option>
                            <option value="5">Android Programming</option>
                        </select></td>
                    </tr>
<tr>
                        <td><label>No of Pax</label></td>
                        <td><input type="text" name="paxNo" value="" placeholder="No of Pax" size="50"/></td>
                    </tr>
                    <tr>
                        <td><label>Type of Training</label></td>
                        <td><label>Yes</label> <input type="radio" name="isStudent" value="1"/> <label>No</label> <input type="radio" name="isStudent" value="0"/></td>
                    </tr>
                    <tr>
                        <td><br><input type="submit" id="btnSubmit" value="Submit"/> <input type="reset" id="btnCancel" value="Cancel"/></td>
                        <td></td>
                    </tr>
                </table>
            </fieldset>
            <br>
        </form>
        <footer>&copy;Hidayatul Ain</footer>
    </body>
</html>
