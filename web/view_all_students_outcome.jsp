<%-- 
    Document   : view_all_students_outcome
    Created on : May 11, 2025, 9:33:21 PM
    Author     : PHATHUTSHED20
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>View Players Page</title>
    </head>
    <body>
        <h1>View All Players!</h1>
        <%
        
            List<Student> students = ( List<Student>)request.getAttribute("players");
            for(Student stud: students){
                Long id = stud.getId();
                String name = stud.getName();
                 String sport = stud.getSport();
                 Character genderCharacter = stud.getGender();
                 String gender = "";
                 switch(genderCharacter){
                     case 'F':
                         gender = "Female";
                     break;
                     default:
                          gender = "Male";
                 
                 }
        %>
             <table>
                <tr>
                    <td>ID(Student Number):</td>
                    <td><%=id%></td>
                </tr>
                <tr>
                     <td>Full name:</td>
                    <td><%=name%></td>
                </tr>
               <tr>
                    <td>Sport Code:</td>
                     <td><%=sport%></td>
                </tr>
             <tr>
                    <td>Gender:</td>
                    <td><%=gender%></td>
                </tr>
            </table>
   
        <%
            }
        %>
        <p>
            Click <a href="index.html">here</a> to go back to the main page.
        </p>
         <a href="LogoutSessionServlet">Click here to go Logout</a>
    </body>
</html>
