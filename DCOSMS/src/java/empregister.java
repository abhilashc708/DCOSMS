/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Abhilash
 */
public class empregister extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
             String name=request.getParameter("name");
           String phone=request.getParameter("phone");
           String email=request.getParameter("email");
           String address=request.getParameter("address");
           String state=request.getParameter("state");
           String salary=request.getParameter("salary");
           String empid=request.getParameter("empid");
           String pass=request.getParameter("pass");
           String sex=request.getParameter("gender");
           String day=request.getParameter("day");
           String month=request.getParameter("month");
           String year=request.getParameter("year");
           String national=request.getParameter("national");
           
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=(Connection) DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
                Statement st=con.createStatement();
             
                  String query="insert into empreg(empid,pass,name,phone,email,address,state,salary,sex,day,month,year,national) values('"+empid+"','"+pass+"','"+name+"',"+phone+",'"+email+"','"+address+"','"+state+"',"+salary+",'"+sex+"',"+day+","+month+","+year+",'"+national+"')";
                  if(st.executeUpdate(query)>0){
                      
                        request.setAttribute("errormessage", "Employee Registration Succsessfully Completed");
         
                         getServletContext().getRequestDispatcher("/addemployee.jsp").forward(request, response);
                      //out.println("Value Inserted");
                      //out.write("<script>window.location='home.jsp'</script>");
                      //response.sendRedirect("home.jsp");
                 }
                  else
                  {
                      request.setAttribute("errormessage", "Employee Registration Failed");
         
                         getServletContext().getRequestDispatcher("/addemployee.jsp").forward(request, response);
                  }

                   con.close();
            }
            catch(Exception e)
            {
                
            }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet empregister</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet empregister at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
             */
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
