<%-- 
    Document   : get_male_students_using_campus
    Created on : May 11, 2025, 4:39:07 PM
    Author     : PHATHUTSHED20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Male Students Using Sport Page</title>
    </head>
    <body>
        <h1>Get Male Students Using Sport</h1>
       <form action="GetMalesServlet" method="POST">
            <table>
                <tr>
                    <td>Sport: </td>
                    <td><input type="text" name="sport" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET MALES"></td>
                </tr>
                
            </table>
        </form> 
      
    </body>
</html>
