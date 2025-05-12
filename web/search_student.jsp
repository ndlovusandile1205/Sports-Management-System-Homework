<%-- 
    Document   : search_student
    Created on : May 11, 2025, 4:30:12 PM
    Author     : PHATHUTSHED20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Student Page</title>
    </head>
    <body>
        <h1>Search Student</h1>
        <form action="SearchStudentServlet" method="POST">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SEARCH"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
