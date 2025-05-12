<%-- 
    Document   : add_manager
    Created on : May 11, 2025, 4:14:11 PM
    Author     : PHATHUTSHED20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Manager Page</title>
    </head>
    <body>
        <h1>Add Manager</h1>
        <p>Provide the following details below:</p>
        <form action="AddManagerServlet" method="POST">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id" required="" ></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required="" ></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="param" value="ADD MANAGER" ></td>
                </tr>
            </table>
        </form>
    </body>
</html>
