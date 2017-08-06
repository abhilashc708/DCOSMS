
<%@page import="java.sql.*"%>
<%@page  import=" java.io.IOException" %> 
<%@page  import=" java.lang.String" %> 
<%@page import="java.io.PrintWriter"  %> 
<%@page  import="javax.servlet.RequestDispatcher" %> 
<%@page  import="javax.servlet.ServletException" %> 
<%@page   import="javax.servlet.http.HttpServlet"%> 
<%@page  import="javax.servlet.http.HttpServletRequest" %> 
<%@page  import="javax.servlet.http.HttpServletResponse" %> 
<%@page  import="javax.servlet.http.HttpSession" %> 
<%@page  import="javax.swing.text.html.parser.Element" %> 
<%@page  import="javax.websocket.Session" %>
<!DOCTYPE HTML>
<html>
<head>
<title>www.dcosms.com</title>
<meta charset="utf-8">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="grey">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
<link href="images/favicon.png" rel="shortcut icon">
<link href="images/favicon.png" rel="bookmark icon">
<link href="css/main.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min-latest.js"></script>
<script src="js/jquery.nivo.slider.js"></script>
<script src="js/custom.js"></script>
<script>
$(function () {
    setInterval("rotateDiv()", 10000);
});
function rotateDiv() {
    var currentDiv = $("#simpleslider div.current");
    var nextDiv = currentDiv.next();
    if (nextDiv.length == 0) nextDiv = $("#simpleslider div:first");
    currentDiv.removeClass('current')
        .addClass('previous')
        .fadeOut('2000');
    nextDiv.fadeIn('3000')
        .addClass('current', function () {
        currentDiv.fadeOut('2000', function () {
            currentDiv.removeClass('previous');
        });
    });
}
</script>
</head>
<body>
<div id="header">
  <!-- Start navigation area -->
  <div id="navigation">
    <div id="navigation_wrap">
      <!-- Start contact info area -->
      <div id="conteactinfo"><strong>Email:</strong> dcosmskerala@gmail.com  | <strong>Phone:</strong>  (+91) 9544 350 091</div>
      <!-- End contact info area -->
      <!-- Start navigation -->
      <div id="navi">
        <ul>
            <li><a href="#"  class="current">Home</a></li>
          <li><a href="#">Employee manage</a>
            <ul>
              <li><a href="addemployee">Add emplyoee</a></li>
              <li><a href="viewemployee">View employee Details</a></li>
              <li><a href="employeedelet">Delete employee</a></li>
              <li><a href="updateemployee">modify employee</a></li>
            </ul>
          </li>
          <li><a href="#">Milk Details</a>
            <ul>
                 <li><a href="milkcollect1">  initial milk count</a></li>
                 <li><a href="adminpurchaseview"> Milk Purchase Details</a></li>
              <li><a href="adminsalesview">Milk Sales Details</a></li>
              
              
              
            </ul>
          </li>
           <li><a href="#">Admin Manage</a>
                <ul>
              <li><a href="regadmin">Add New Admin</a></li>
              <li><a href="changeadminpass">Change current Password</a></li>
              
            </ul>
           </li>
            <li><a href="logout">sign out</a></li>
        </ul>
      </div>
      <!-- End navigation -->
    </div>
  </div>
  <!-- End navigation area -->
  <div class="clear"></div>
  <!-- Start Social & Logo area -->
    <!-- Start Social area -->
    
    <!-- End Socialarea -->
    <!-- Start Logo area -->
    <!-- End Logo area -->
  
  <!-- End Social & Logo area -->
</div>
<div id="main">
  <!-- Start H1 Title -->
  <div class="titlesnormal">
    <h1>Admin Home</h1>
    <span></span> </div>
  <!-- End H1 Title -->
  <!-- Start Main Body Wrap -->
  <div id="main-wrap">
    <!-- Start Latest Project titles -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
           <div id="contactwarning"></div>
        <div id="contactajax"></div>
        <form action="adminlogin" method="post" name="ajaxcontactform" id="ajaxcontactform">
         <div class="splitnone">
                  
               <p align="center">
                       <label> 
                           <font color="black" size="4">${errormessage}</font>    
                       </label>
                       
                   </p>
                   <h1>
              <%
               HttpSession session1=request.getSession(false);
               String name1=session1.getAttribute("name").toString();
               String uid=session1.getAttribute("aid").toString();
    try{
         if(session1!=null)
                       {
           // RequestDispatcher rd=request.getRequestDispatcher("/adminlogin");
              out.println("<html><body>");
              out.println("<center>");
              out.println("<font color=\"black\">");
          out.print(name1+" : Your Account will be active now");
           out.println("</font>");
          out.println("</center>");
             out.println("</body></html>");
            %>
                  </h1>
        
          </div>
            <div class="splitnone"><hr><br><br><br>
                 <p align="center">
                       <label> 
                           <font color="black" size="4">${err}</font>    
                       </label>
                       
                   </p>
                 <%            
                            int num=0;
                              try{
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
                               Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                               ResultSet rs , rs1;
                               rs=st.executeQuery("select count(userid) from users");
                               while(rs.next()){
                                   num=1;
                                   String user=rs.getString(1);
                                   rs1=st.executeQuery("select count(empid) from empreg");
                            while(rs1.next()){
                                   num=1;
                                   String emp=rs1.getString(1);
                               


%>


                  <%
           // RequestDispatcher rd=request.getRequestDispatcher("/adminlogin");
              out.println("<html><body>");
              out.println("<center>");
              out.println("<font color=\"black\">");
               out.print(emp+" : Employees are Work Your Society");
          out.println("<br>");
           out.println("<br>");
          out.print(user+" : Customers are registerd your Society");
          out.println("<br>");
          out.println("<br>");
          out.println("<br>");
           out.println("</font>");
          out.println("</center>");
             out.println("</body></html>");
            %> 
            
            </div>
            
        <!-- End None Split Section -->
       </form>
        <!-- End 2 Half Split Section -->
       
        <!-- Start Third Split Section -->
       
        
        
        <!-- End Third Split Section -->
        
        <!-- Start one 3rd and two 3rd Split Section -->
        
        
        <!-- End one 3rd and two 3rd Split Section -->
       
      
        
        
        
        <!-- End Quater Split Section -->
      </div>
    <!-- End Latest Project titles -->
  </div>
  <!-- End Main Body Wrap -->
</div>
</div>
<!-- Start Footer -->
<div id="footer1">

  <!-- Start Footer Top -->

  
      <!-- Start Latest Tweets -->
    
      <!-- End Latest Tweets -->
      <!-- Start Useful Links -->
     
      <!-- End Useful Links -->
      <!-- Start Testimonials -->
      

  <!-- End Footer Top -->
  <div class="clear"></div>
  <!-- Start Footer Bottom -->
  <div id="footerbottom">
    <div class="footerwrap">
      <!-- Start Copyright Div -->
      <div id="copyright">&copy;2016.All Rights Reserved.  People Projects From dco-sms. <a target="_blank" href="http://localhost:8081/DCOSMS/">dco-sms</a></div>
      <!-- PLEASE SUPPORT US BY LEAVING THIS LINK -->
      <!-- End Copyright Div -->
      <!-- Start Social area -->
      <div class="socialfooter">
        <ul>
          <li><a href="#" class="social-google"></a></li>
          <li><a href="#" class="social-facebook"></a></li>
          <li><a href="#" class="social-twitter"></a></li>
          <li><a href="#" class="social-linkedin"></a></li>
          <li><a href="#" class="social-forrst"></a></li>
          <li><a href="#" class="social-dribbble"></a></li>
        </ul>
      </div>
      <!-- End Socialarea -->
    </div>
  </div>
  <!-- End Footer Bottom -->
</div>
<!-- End Footer -->
<!-- Start Scroll To Top Div -->
<div id="scrolltab"></div>
 <%
                         }
           }
         }
                              finally
                              {
        if(num==0){
      request.setAttribute("err", "NO Employees And No Users ");
   
    }
                                                                                               
                                                                                           }
                                                                                                                                                                
                       
          %>
            
<h1>
  <%
        }
        else
                       {
            RequestDispatcher rd=request.getRequestDispatcher("/login");
         rd.forward(request, response);
        }
               }
    finally{
       
        out.close();
    }
             
          %>
          </h1>
         
<!-- End Scroll To Top Div -->
</body>
</html>