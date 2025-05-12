<%-- 
    Document   : add_player
    Created on : 10 May 2025, 8:46:06 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Player Page</title>
    </head>
    <body>
        <h1>Add Player</h1>
        <p>Enter your details below:</p>
        <form action="AddPlayerServlet" method="POST">
            <table>
                <tr>
                    <td>ID(Student Number):</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>Full name:</td>
                    <td><input type="text" name="fullName"></td>
                </tr>
                <tr>
                    <td>Sport Code:</td>
                    <td><input type="text" name="sport"></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><input type="text" name="gender"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
