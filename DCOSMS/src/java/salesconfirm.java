/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
 import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Abhilash
 */
public class salesconfirm extends HttpServlet {

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
                String userid=request.getParameter("custid");
         String name=request.getParameter("name");
          String tmilk=request.getParameter("tmilk");
         String sdate=request.getParameter("sdate");
         String edate=request.getParameter("edate");
            String total=request.getParameter("total");
         try{
              Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=(Connection) DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
            Statement st=con.createStatement(); 
              String query="insert into salespayment(custid,name,tmilk,sdate,edate,total)values('"+userid+"','"+name+"',"+tmilk+",'"+sdate+"','"+edate+"',"+total+")";
              if(st.executeUpdate(query)>0)
              { 
                    getServletContext().getRequestDispatcher("/customerbill.jsp").forward(request, response);     
              }
              else
              {
                   getServletContext().getRequestDispatcher("/salespay.jsp").forward(request, response);    
              }
             
         }
         catch(Exception e)
         {
             out.println(e.getMessage()); 
         }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet salesconfirm</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet salesconfirm at " + request.getContextPath () + "</h1>");
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
