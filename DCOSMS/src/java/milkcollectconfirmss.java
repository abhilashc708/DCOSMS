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


/**
 *
 * @author Abhilash
 */
public class milkcollectconfirmss extends HttpServlet {

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
         String name=request.getParameter("name");
         String date=request.getParameter("date");
         String price=request.getParameter("ltrprice");
         String quality=request.getParameter("quality");
         String trate=request.getParameter("trate");
         String quantity=request.getParameter("quantity");
         String total=request.getParameter("total");
         try{
             Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=(Connection) DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
                Statement st=(Statement) con.createStatement();
                String query="insert into milkcollect(userid,uname,date1,ltrprice,quality,trate,quantity,total) values('"+userid+"','"+name+"','"+date+"',"+price+","+quality+","+trate+","+quantity+","+total+")";
                 if(st.executeUpdate(query)>0)
                 {
                      String query1="update useraccount set totamt=totamt+"+total+" where userid='"+userid+"'";
                       String query2="update milkaccount set tmilk=tmilk+"+quantity+" where date1='"+date+"'";
                      if(st.executeUpdate(query1)>0 && st.executeUpdate(query2)>0)
                      {
                        request.setAttribute("errormessage", "Milk Collection Succsessfully Completed");
         
                         getServletContext().getRequestDispatcher("/milkcollect.jsp").forward(request, response);
                      //out.println("Value Inserted");
                      //out.write("<script>window.location='home.jsp'</script>");
                      //response.sendRedirect("home.jsp");
                 }
                 }
                 
                  else
                  {
                      request.setAttribute("errormessage", "Milk Collection Failed");
         
                         getServletContext().getRequestDispatcher("/milkcollect.jsp").forward(request, response);
                  }

                   con.close();
                
         }
         catch(Exception e)
         {
                out.println(e.getMessage());
         }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet milkcollectconfirms</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet milkcollectconfirms at " + request.getContextPath () + "</h1>");
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
