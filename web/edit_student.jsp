<%-- 
    Document   : edit_student
    Created on : May 11, 2025, 4:26:51 PM
    Author     : PHATHUTSHED20
--%>


<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Student Page</title>
    </head>
    <body>
        <h1>Edit Student</h1>
        <%
            Student player = (Student)request.getAttribute("player");
              Long id = player.getId();
                String name = player.getName();
                 String sport = player.getSport();
                 Character genderCharacter = player.getGender();
                
        
        %>
        <form action="EditStudentServlet" method="POST">
            <table>
                <tr>
                    <td>ID(Student Number):</td>
                    <td><input type="text" name="id" value="<%=id%>" readonly=""></td>
                </tr>
                <tr>
                    <td>Full name:</td>
                    <td><input type="text" name="fullName" value="<%=name%>"></td>
                </tr>
                <tr>
                    <td>Sport Code:</td>
                    <td><input type="text" name="sport" value="<%=sport%>"></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><input type="text" name="gender" value="<%=genderCharacter%>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="EDIT"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
