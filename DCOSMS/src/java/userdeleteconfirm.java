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
public class userdeleteconfirm extends HttpServlet {

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
              String userid=request.getParameter("userid");
                 try{
               
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=(Connection) DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
                Statement st=(Statement) con.createStatement();
             
                  String query="delete from users where userid='"+userid+"'";
                 if(st.executeUpdate(query)>0){
                      
                        request.setAttribute("errormessage", "User Deletion Succsessfully Completed");
         
                         getServletContext().getRequestDispatcher("/deleteuser").forward(request, response);
                      //out.println("Value Inserted");
                      //out.write("<script>window.location='home.jsp'</script>");
                      //response.sendRedirect("home.jsp");
                 }
                  else
                  {
                      request.setAttribute("errormessage", "Not Valid User ID");
         
                         getServletContext().getRequestDispatcher("/deleteuser").forward(request, response);
                  }

                   con.close();
                 }
                 catch(Exception e)
                 {
                     
                 }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet userdeleteconfirm</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet userdeleteconfirm at " + request.getContextPath () + "</h1>");
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
