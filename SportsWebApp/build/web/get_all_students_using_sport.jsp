<%-- 
    Document   : get_all_students_using_sport
    Created on : 12 May 2025, 2:55:15 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get All Students Using Sport Page</title>
    </head>
    <body>
        <h1>Get All Students Using Sport</h1>
        <form action="GetAllServlet" method="POST">
            <table>
                <tr>
                    <td>Sport: </td>
                    <td><input type="text" name="sport" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"  value="GET FEMALES"></td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
