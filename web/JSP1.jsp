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

        <%String action = request.getParameter("action");
            String url = "/JSP1.jsp";
            if (action == null) {
                out.write("<form action=\"submit\">");
                out.write("<input type=\"text\" name=\"name\"/>");
                out.write("<input type=\"text\" name=\"salary\"/>");
                out.write("<input type=\"submit\" name=\"submit\"/>");
                out.write("</form>");

                action = "add";
                 //request.setAttribute("name",name);
                //  request.setAttribute("salary",salary);
            } else if (action.equals("add")) {

                action = "sub";
                getServletContext().getRequestDispatcher(url).forward(request, response);

            } else if (action.equals("sub")) {

                String name = request.getParameter("name");
                String salary = request.getParameter("salary");

                out.write("<p>" + name + "</p>");
                out.write("<p>" + salary + "</p>");
            }
            //double salary = Double.valueOf(request.getParameter("salary"));
            //salary = salary/12;
        %>
  
    </body>
</html>
