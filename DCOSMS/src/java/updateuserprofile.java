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
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 *
 * @author Abhilash
 */
public class updateuserprofile extends HttpServlet {

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
         HttpSession session1=request.getSession(); 
         String uid=session1.getAttribute("uid").toString();
           String phone=request.getParameter("phone");
           String email=request.getParameter("email");
           String address=request.getParameter("address");
           String city=request.getParameter("city");
           String state=request.getParameter("state");
        try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=(Connection) DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
                Statement st=con.createStatement();
             
                  String query="update users set phone="+phone+",email='"+email+"',address='"+address+"',city='"+city+"',state='"+state+"' where userid='"+uid+"'";
                  if(st.executeUpdate(query)>0){
                    
                        request.setAttribute("errormessage", "Profile Updation Succsessfully Completed");
         
                         getServletContext().getRequestDispatcher("/userprofile.jsp").forward(request, response);
                      //out.println("Value Inserted");
                      //out.write("<script>window.location='home.jsp'</script>");
                      //response.sendRedirect("home.jsp");
                 }
                else
                  {
                    
                      request.setAttribute("errormessage", "Profile Updation Failed");
         
                         getServletContext().getRequestDispatcher("/userprofile.jsp").forward(request, response);
                  }

                   con.close();
            }
            catch(Exception e)
            {
                
            }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateuserprofile</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateuserprofile at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
             */
         finally {            
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
