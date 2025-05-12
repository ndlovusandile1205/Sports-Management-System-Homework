<%-- 
    Document   : remove_student
    Created on : May 11, 2025, 4:24:24 PM
    Author     : PHATHUTSHED20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Student Page</title>
    </head>
    <body>
        <h1>Remove Student</h1>
        <form action="RemoveStudentServlet" method="POST">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id" required=""></td>
                </tr>
            </table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="REMOVE"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
