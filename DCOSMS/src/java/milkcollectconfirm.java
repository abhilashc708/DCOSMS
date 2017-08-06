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
public class milkcollectconfirm extends HttpServlet {

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
           String eid=(String)session1.getAttribute("eid");
        try {
              if(eid!= null)
             {
             String userid=request.getParameter("userid");
             String date=request.getParameter("date");
             int num=0;
        
         try{
             Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
    Statement st=(Statement) con.createStatement();
    ResultSet rs;
     rs=st.executeQuery("select * from milkcollect where userid='"+userid+"' and date1='"+date+"'");
     while(rs.next()){
             getServletContext().getRequestDispatcher("/milkcollectconfirm.jsp").forward(request, response);      
        }
     if(num==0){
      //request.setAttribute("errormessage", "Invalid User ID or Password");
         
        getServletContext().getRequestDispatcher("/milkcollectconfirm1.jsp").forward(request, response);
        // out.write("<script>window.location='erorr.jsp'</script>");
      //out.println("<script>window.location='login.jsp'</script>");
    }
       
             
         }catch(Exception e){
             
         }
           // request.getRequestDispatcher("/milkcollectconfirm.jsp").forward(request, response);
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet milkcollectconfirm</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet milkcollectconfirm at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
          *    */
        }
               else
        {
              request.setAttribute("errormessage", "Session has ended ...Please login");
              getServletContext().getRequestDispatcher("/employee").forward(request, response);
         }
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
