<%-- 
    Document   : get_males_outcome
    Created on : May 11, 2025, 10:26:50 PM
    Author     : PHATHUTSHED20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Male Outcome Page</title>
    </head>
    <body>
        <h1>Male Outcome</h1>
        <%
            Long numMales = (Long)request.getAttribute("numMales");
        %>
        <p>
            This sport has <%=numMales%> male(s). 
        </p>
        <p>
            Click <a href="index.html">here</a> to go back to the main page.
        </p>
         <a href="LogoutSessionServlet">Click here to go Logout</a>
    </body>
</html>
