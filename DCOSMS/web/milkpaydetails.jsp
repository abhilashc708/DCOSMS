
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
<link rel="stylesheet" href="css1/style.css">
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
	<style>
	
	/* 
	Max width before this PARTICULAR table gets nasty
	This query will take effect for any screen smaller than 760px
	and also iPads specifically.
	*/
	@media 
	only screen and (max-width: 760px),
	(min-device-width: 768px) and (max-device-width: 1024px)  {
	
		/* Force table to not be like tables anymore */
		table, thead, tbody, th, td, tr { 
			display: block; 
		}
		
		/* Hide table headers (but not display: none;, for accessibility) */
		thead tr { 
			position: absolute;
			top: -9999px;
			left: -9999px;
		}
		
		tr { border: 1px solid #ccc; }
		
		td { 
			/* Behave  like a "row" */
			border: none;
			border-bottom: 1px solid #eee; 
			position: relative;
			padding-left: 50%; 
		}
		
		td:before { 
			/* Now like a table header */
			position: absolute;
			/* Top/left values mimic padding */
			top: 6px;
			left: 6px;
			width: 45%; 
			padding-right: 10px; 
			white-space: nowrap;
		}
		
		/*
		Label the data
		*/
		td:nth-of-type(1):before { content: "Emp ID"; }
		td:nth-of-type(2):before { content: "Pass"; }
		td:nth-of-type(3):before { content: "Name"; }
		td:nth-of-type(4):before { content: "Phone"; }
		td:nth-of-type(5):before { content: "Email"; }
		td:nth-of-type(6):before { content: "Address"; }
		td:nth-of-type(7):before { content: "State"; }
		td:nth-of-type(8):before { content: "Salary"; }
		td:nth-of-type(9):before { content: "Sex"; }
		td:nth-of-type(10):before { content: "Day"; }
                td:nth-of-type(11):before { content: "Month"; }
                td:nth-of-type(12):before { content: "Year"; }
                td:nth-of-type(13):before { content: "National"; }
	}
	
	/* Smartphones (portrait and landscape) ----------- */
	@media only screen
	and (min-device-width : 320px)
	and (max-device-width : 480px) {
		body { 
			padding: 0; 
			margin: 0; 
			width: 320px; }
		}
	
	/* iPads (portrait and landscape) ----------- */
	@media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {
		body { 
			width: 495px; 
		}
	}
	
	</style>
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
              <li><a href="icons-and-lists.html">Delete employee</a></li>
              <li><a href="notifications.html">modify employee</a></li>
            </ul>
          </li>
          <li><a href="#">milk</a>
            <ul>
              <li><a href="#"> view total milk sales</a></li>
              <li><a href="#">  view total milk collect</a></li>
              
              
            </ul>
          </li>
          <li><a href="#">total rupees</a>
               <ul>
              <li><a href="#">total milk sales rupees</a></li>
              <li><a href="#">total milk collection rupees</a></li>
              
            </ul>
          </li>
           <li><a href="contact-us.html">Change Password</a></li>
            <li><a href="logout">sign out</a></li>
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
      <h1> Cash Payment</h1>
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
      <div class="splitnone">
         
          
          <table align="center" width="" height="" border="0">
              <thead>
		<tr>
			<th>User ID</th>
			<th>Name</th>
			<th>Total Milk</th>
			<th>Total Amount</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Paid Amount</th>
                      
		</tr>
		</thead>
                <tbody>
                
                            <%
                             String userid=request.getParameter("userid");
                            int num=0;
                              try{
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
                               Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                               ResultSet rs, rs1;
                                       rs=st.executeQuery("Select * from milkpayment where userid='"+userid+"' ");
                               while(rs.next()){
                                   num=1;
                                   String user=rs.getString(1);
                                   String name =rs.getString(2);
                                   String tmilk=rs.getString(3);
                                   String tamount=rs.getString(4);
                                   String sdate=rs.getString(5);
                                   String edate=rs.getString(6);
                                   String pamount=rs.getString(7);
                                   
                                  
    
                                                                             
                %>
                             <tr>
   <td > <font color="black"><%=user%>  </font></td>
     <td><font color="black"><%=name%>  </font></td>
      <td><font color="black"><%=tmilk%>  </font></td>
       <td><font color="black"><%=tamount%>  </font></td>
        <td><font color="black"><%=sdate%>  </font></td>
        <td><font color="black"><%=edate%>  </font></td>
         <td><font color="black"><%=pamount%>  </font></td>     
          
         
        
</tr>
                            <%
                                                       
                                       }
         }
                              finally
                              {
        if(num==0){
      request.setAttribute("errormessage", "There Are No Any Payment In This User!!!");
   
    }
                                                                                               
                                                                                           }
                                                                                                                                                                
                             
                %>
                 
                </tbody>
          </table>
          <p align="center">
                       <label> 
                           <font color="darkred" size="5">${errormessage}</font>    
                       </label>
                       
                   </p>
      </div>

        
        
        <!-- End Third Split Section -->
        
        <!-- Start one 3rd and two 3rd Split Section -->
        
        
        <!-- End one 3rd and two 3rd Split Section -->
       
      
        
        
        
        <!-- End Quater Split Section -->
      </div>
      <span class="box-arrow"></span> </div>
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
</body>
</html>