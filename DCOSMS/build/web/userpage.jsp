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
     <%
               HttpSession session1=request.getSession(false);
                String name1=session1.getAttribute("name").toString();
               String uid=session1.getAttribute("uid").toString();
               String total="";
    try{
         if(session1!=null)
                       {
             %>
             
             <%
             
                     try{
                        
              Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
    Statement st=con.createStatement();
    ResultSet rs;
    
    rs=st.executeQuery("select * from  useraccount  where userid='"+uid+"'");
     while(rs.next()){
           total=rs.getString(2);
                }
      }catch(Exception e)
       {
           out.print("Exception"+e);
       }
             %>
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
          <li><a href="usermilkview">milk details</a>
          </li>
          <li><a href="news">News</a>
          </li>
      
          
          <li><a href="#"><font color="black"><%=name1%>'s</font> Profile</a>
              <ul>
                  <li><a href="userprofile">Edit Profile</a></li>
                    <li><a href="changeuserpass">Change Password</a></li>
                     <li><a href="logout">sign out</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!-- End navigation -->
    </div>
  </div>
  <!-- End navigation area -->
  <div class="clear"></div>
  <!-- Start Social & Logo area -->
  <div id="header_small">
    <!-- Start Social area -->
    <div class="social">
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
    <!-- Start Logo area -->
    <div id="logo"> <a href="index.html">DCO-SMS</a> </div>
    <!-- End Logo area -->
  </div>
  <!-- End Social & Logo area -->
</div>
<div id="main">
  <!-- Start H1 Title -->
  <div class="titlesnormal">
    <h1>Welcome to Home</h1>
    <span></span> </div>
  <!-- End H1 Title -->
  <!-- Start Main Body Wrap -->
  <div id="main-wrap">
    <!-- Start Latest Project titles -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
           <div id="contactwarning"></div>
        <div id="contactajax"></div>
       
        <!-- End 2 Half Split Section -->
       
        <!-- Start Third Split Section -->
      <div class="splitnone"><br><br>
       
             <%
            out.println("<html><body>");
              out.println("<center>");
              out.println("<font color=\"black\">");
          out.print(" <h1>Welcome : <font color=\"grey\">"+name1+"</font></h1>");
          out.print("<br>");
          out.print("<h2> Current Account Balance Rs :  <font color=\"grey\"> " +total+"</font></h2>");
           out.println("</font>");
          out.println("</center>");
             out.println("</body></html>");
            %>
           
      </div>
            <div class="splitnone"><br><br>
                <p align="center"><font color="black" size="5"> Welcome To Milk Society<br></font></p><hr><br><p align="left"><font color="black" size="4">Dairying is an important source of subsidiary income to small/marginal farmers and agricultural labourers. In addition to milk, the manure from animals provides a good source of organic matter for improving soil fertility and crop yields. The gobar gas from the dung is used as fuel for domestic purposes as also for running engines for drawing water from well. The surplus fodder and agricultural by-products are gainfully utilised for feeding the animals. Almost all draught power for farm operations and transportation is supplied by bullocks. Since agriculture is mostly seasonal, there is a possibility of finding employment throughout the year for many persons through dairy farming. Thus, dairy also provides employment throughout the year. The main beneficiaries of dairy programmes are small/marginal farmers and landless labourers.  </font></p>
            </div>

        
        
        <!-- End Third Split Section -->
        
        <!-- Start one 3rd and two 3rd Split Section -->
        
        
        <!-- End one 3rd and two 3rd Split Section -->
       
      
        
        
        
        <!-- End Quater Split Section -->
      </div>
    <!-- End Latest Project titles -->
  </div>
  <!-- End Main Body Wrap -->
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
<!-- End Scroll To Top Div -->
  <%
        }
        else
                       {
            RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
         rd.forward(request, response);
        }
               }
    finally{
       
        out.close();
    }
             
          %>
</body>
</html>