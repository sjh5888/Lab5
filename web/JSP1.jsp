<%-- 
    Document   : JSP1
    Created on : Feb 28, 2019, 6:30:26 PM
    Author     : D'Clarkus Williams
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Lab 1</title>
    </head>
    <body>
        <h1>First JSP Lab</h1>
        <form action="eggs">
            <input type="text" name="name"/>
            <input type="text" name="salary"/>
            <input type="submit" name="submit"/>
        </form>
        <% double salary = Double.valueOf(request.getParameter("salary"));
            salary = salary/12;
        %>
        
        <p><% //out.print(salary);%></p>
        <p><%//request.getParameter("name"); %></p>
    </body>
</html>
