<%-- 
    Document   : view_all_managers_outcome
    Created on : May 11, 2025, 9:25:37 PM
    Author     : PHATHUTSHED20
--%>

<%@page import="za.ac.tut.entities.Manager"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Managers Page</title>
    </head>
    <body>
        <h1>View All Managers!</h1>
        <%
        
            List<Manager> managers = ( List<Manager>)request.getAttribute("managers");
            for(Manager man:managers){
                Long id = man.getId();
                String name = man.getName();
                
        %>
             <table>
                <tr>
                    <td>ID:</td>
                    <td><%=id%></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><%=name%></td>
                </tr>
            </table>
        <%
            }
        %>
        <p>
            Click <a href="index.html">here</a> to go back to the main page.
        </p>
        <a href="LogoutSessionServlet">Click here to go Logout</a>
    </body>
</html>
