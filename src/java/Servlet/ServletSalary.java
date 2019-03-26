package Servlet;

/** 
* IST 411 JSPandServlet Lab 
*ServletSalary.java
* Purpose: This class creates a basic web page with a form that takes information
* given in the form, interprets it, and provides basic output.
* @author Steven Hansen 
* @version 1.0 2/28/19 
*/ 

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletSalary extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>JSP Lab 1</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>First JSP Lab</h1>");

            out.write("\n");
            out.write("        <form action=\"ServletSalary\">\n");
            out.write("            <p>Name:</p> \n");
            out.write("            <input type= \"text\" name=\"name\"/>\n");
            out.write("            <p>Yearly Salary:</p> \n");
            out.write("            <input type= \"text\" name=\"salary\"/>\n");
            out.write("            <input type= \"submit\" value=\"submit\"/>\n");
            out.write("        </form>\n");
            out.write("        \n");
            out.write("        \n");
            out.write("        ");

            String name = request.getParameter("name");
            String salary = request.getParameter("salary");

            if (name != null) {

                try {
                    double monthlySalary = Double.valueOf(salary);
                    monthlySalary = monthlySalary / 12;

                    out.println("<p>Name: " + name + "</p>");
                    out.println("<p>Salary: $" + monthlySalary + " per month.</p>");

                } catch (NumberFormatException e) {
                    out.println("<p>Please enter only numeric values in the salary box.</p>");
                }
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
