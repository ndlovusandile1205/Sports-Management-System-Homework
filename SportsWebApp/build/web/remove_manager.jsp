<%-- 
    Document   : remove_manager
    Created on : May 11, 2025, 4:49:02 PM
    Author     : PHATHUTSHED20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Manager Page</title>
    </head>
    <body>
        <h1>Remove Manager</h1>
    <form action="RemoveManagerServlet" method="POST">
        <table>
            <tr>
                <td>ID:</td>
                <td><input type="text" name="id" required=""></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="param" value="REMOVE"></td>
            </tr>
        </table>
    </form>
    </body>
</html>
