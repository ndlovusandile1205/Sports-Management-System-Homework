<%-- 
    Document   : get_females_outcome
    Created on : May 11, 2025, 10:27:23 PM
    Author     : PHATHUTSHED20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Female outcome Page</title>
    </head>
    <body>
        <h1>Number of Females Outcome</h1>
        <%
            Long numFemales = (Long)request.getAttribute("numFemales");
        %>
        <p>
            This sport has <%=numFemales%> female(s). 
        </p>
        <p>
            Click <a href="index.html">here</a> to go back to the main page.
        </p>
         <a href="LogoutSessionServlet">Click here to go Logout</a>
    </body>
</html>
