<%-- 
    Document   : get_all_outcome
    Created on : 12 May 2025, 2:57:56 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Students Per Sport Outcome Page</title>
    </head>
    <body>
        <h1>All Students Per Sport Outcome</h1>
        <%
            Long numberStudnts = (Long) request.getAttribute("numberStudnts");
        %>
        <p>
            This sport has <%=numberStudnts%> players. 
        </p>
        <p>
            Click <a href="index.html">here</a> to go back to the main page.
        </p>
        <a href="LogoutSessionServlet">Click here to go Logout</a>
    </body>
</body>
</html>
