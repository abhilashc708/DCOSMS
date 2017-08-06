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
import javax.swing.text.html.parser.Element;
import javax.websocket.Session;


/**
 *
 * @author Abhilash
 */
public class adminlogin extends HttpServlet {

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
         String userid=request.getParameter("userid");
           String pass=request.getParameter("pass");
            int num=0;
           try{
              Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
    Statement st=con.createStatement();
    ResultSet rs;
    
    rs=st.executeQuery("select * from  admin  where id='"+userid+"' and pass='"+pass+"'");
     while(rs.next()){
          String name=rs.getString(2);
         num=1;
          HttpSession session1=request.getSession();
            session1.setAttribute("name", name);
         session1.setAttribute("aid", userid);
         session1.setAttribute("pass", pass);
        getServletContext().getRequestDispatcher("/adminpage").forward(request, response);
     }
    if(num==0){
      request.setAttribute("errormessage", "Invalid Admin ID or Password");
         
        getServletContext().getRequestDispatcher("/adminlogin.jsp").forward(request, response);
    }
    con.close();
      }catch(Exception e)
       {
           out.print("Exception"+e);
       }
        
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
