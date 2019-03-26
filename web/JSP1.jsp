<%-- 
    Document   : JSP1.jsp
    Created on : Feb 28, 2019, 6:30:26 PM
    Author     : Steven Hansen
    Purpose    : This class creates a basic web page with a form that takes information
                 given in the form, interprets it, and provides basic output.
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

        <form action="JSP1.jsp">
            <p>Name:</p> 
            <input type= "text" name="name"/>
            <p>Yearly Salary:</p> 
            <input type= "text" name="salary"/>
            <input type= "submit" value="submit"/>
        </form>
        
        
        <%
            String name = request.getParameter("name");         
            String salary = request.getParameter("salary");
            
            if (name != null) {
               
              try{ 
                  double monthlySalary = Double.valueOf(salary);
                  monthlySalary = monthlySalary/12;
              
               
               out.println("<p>Name: " + name + "</p>");
               out.println("<p>Salary: $" + monthlySalary + " per month.</p>");
              
              }catch(NumberFormatException e){
                  out.println("<p>Please enter only numeric values in the salary box.</p>");
              }
            }
        %>
  
    </body>
</html>
