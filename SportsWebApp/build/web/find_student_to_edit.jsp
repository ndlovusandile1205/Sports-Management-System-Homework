<%-- 
    Document   : find_student_to_edit
    Created on : May 11, 2025, 10:45:13 PM
    Author     : PHATHUTSHED20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Edit Student Page</title>
    </head>
    <body>
        <h1>Edit Student</h1>
        <form action="FindToEditStudentServlet" method="POST">
            <table>
                <tr>
                    <td>Target ID:</td>
                    <td><input type="text" name="id" required=""></td>
                </tr>
                <tr>
                    <td>Sport:</td>
                    <td><input type="text" name="sport" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="param" value="EDIT"></td>
                </tr>
                </table>
        </form>
    </body>
</html>
