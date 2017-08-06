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
public class loginform1 extends HttpServlet {

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
    
     rs=st.executeQuery("select * from users  where userid='"+userid+"' and pass='"+pass+"'");
     while(rs.next()){
           String name=rs.getString(3);
         num=1;
         HttpSession session=request.getSession();
         session.setAttribute("uid", userid);
          session.setAttribute("pass", pass);
            session.setAttribute("name", name);
         RequestDispatcher rd=request.getRequestDispatcher("userpage.jsp");
         rd.forward(request, response);
     }
    if(num==0){
      request.setAttribute("errormessage", "Invalid User ID or Password");
         
        getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
        // out.write("<script>window.location='erorr.jsp'</script>");
      //out.println("<script>window.location='login.jsp'</script>");
    }
    con.close();
      }catch(Exception e)
       {
           out.print("Exception"+e);
       }
     
            
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginform1</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginform1 at " + request.getContextPath () + "</h1>");
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
