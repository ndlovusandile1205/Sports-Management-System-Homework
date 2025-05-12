<%-- 
    Document   : search_student_outcome
    Created on : May 11, 2025, 9:43:10 PM
    Author     : PHATHUTSHED20
--%>

<%@page import="za.ac.tut.entities.Player"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Player Page</title>
    </head>
    <body>
        <h1>Player Found!</h1>
        <%

            Player play = (Player) request.getAttribute("player");

            Long id = play.getId();
            String name = play.getFullName();
            String sport = play.getSport().getSportCode();
            Character genderCharacter = play.getGender();
            String gender = "";
            switch (genderCharacter) {
                case 'F':
                    gender = "Female";
                    break;
                default:
                    gender = "Male";

            }
            String campus = play.getCampus().getCampusName();
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
            <tr>
                <td>Campus:</td>
                <td><%=campus%></td>
            </tr>
        </table>

        <%

        %>
        <p>
            Click <a href="index.html">here</a> to go back to the main page.
        </p>
        <a href="LogoutSessionServlet">Click here to go Logout</a>
    </body>
</html>
