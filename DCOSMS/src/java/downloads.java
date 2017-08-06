/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Abhilash
 */
public class downloads extends HttpServlet {

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
             out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet download5</title>");  
            out.println("</head>");
            out.println("<body>");
            try{
                 String name=request.getParameter("name");
                  String address=request.getParameter("address");
                  String city=request.getParameter("city");
                  String state=request.getParameter("state");
                   String phone=request.getParameter("phone");
                  String custid=request.getParameter("custid");
                  String invoice=request.getParameter("invoice");
                  String date=request.getParameter("date");
                 
                  String sdate=request.getParameter("sdate");
                  String edate=request.getParameter("edate");
                  String tmilk=request.getParameter("tmilk");
                  String tpay=request.getParameter("tpay");
            Document document= new Document();
            
             response.setContentType("application/pdf");
            PdfWriter.getInstance(document,new FileOutputStream("D:\\customerinvoice.pdf"));
            document.open();
            
             out.println("<font align=center>");
            document.add(new Paragraph("DCO-SMS  RECIEPT CUM INVOICE"));
             out.println("<br><br><br>");
            document.add(new Paragraph("Customet ID :"+custid));
             out.println("<br>");
               document.add(new Paragraph("Invoice No :"+invoice));
                out.println("<br>");
                document.add(new Paragraph("Bill Date :"+date));
                 out.println("<br>");
             document.add(new Paragraph("Name :"+name));
              out.println("<br>");
             document.add(new Paragraph("Address :"+address));
             out.println("<br>");
              document.add(new Paragraph("City :"+city));
              out.println("<br>");
                document.add(new Paragraph("State :"+state));
              out.println("<br>");
              
               document.add(new Paragraph("Phone :"+phone));
                out.println("<br>");
               document.add(new Paragraph("Start Date :"+sdate));
                out.println("<br>");
               document.add(new Paragraph("Payment Date :"+edate));
                out.println("<br>");
                document.add(new Paragraph("Total Quantity Milk :"+tmilk));
                 out.println("<br>");
               document.add(new Paragraph("Total Paid Amount :"+tpay));
  
                 out.println("</font>");
                 
                     document.close();
             request.setAttribute("logmessage", "Transaction Succsessfully Completed !!PDF will be Generated");
            request.getRequestDispatcher("/salespay.jsp").forward(request, response);
                
            }
            catch(Exception e)
            {
                
            }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet downloads</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet downloads at " + request.getContextPath () + "</h1>");
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
