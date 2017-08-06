
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
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Date" %>
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
		td:nth-of-type(1):before { content: "Profile Details"; }
		td:nth-of-type(2):before { content: "Old"; }
		td:nth-of-type(3):before { content: "New"; }
		
		
	
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
          <%
                    SimpleDateFormat sf=new SimpleDateFormat("dd-MM-yyyy");
                  %>
</head>
<body>
    <%
 HttpSession session1=request.getSession(false);
                String name1=session1.getAttribute("name").toString();
               String uid=session1.getAttribute("uid").toString();    
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
            <li><a href="userpage"  >Home</a></li>
          <li><a href="usermilkview">milk details</a>
          </li>
          <li><a href="news">News</a>
          </li>
      
          
          <li><a href="#" class="current"><font color="black"><%=name1%>'s</font> Profile</a>
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
  <!-- Start Social & Logo area -->
  <!-- End Social & Logo area -->
</div>
<div id="main">
  <!-- Start H1 Title -->
  <div class="titlesnormal">
      <h1>Change <font color="black"><%=name1%>'s</font> Profile</h1>
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
        <form action="updateuserprofile" method="post" name="ajaxcontactform" id="ajaxcontactform">
      <div class="splitnone">
              <%
              String phone="";
              String email="";
              String address="";
               String state="";
                 String city="";
                            int num=0;
                              try{
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
                               Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                               ResultSet rs=st.executeQuery("Select * from users where userid='"+uid+"'");
                               while(rs.next()){
                                   num=1;
                                    phone=rs.getString(4);
                                    email=rs.getString(5);
                                    address=rs.getString(6);
                                    city=rs.getString(8);
                                    state=rs.getString(9);
                                         
            }
         }
                              finally
                              {
        if(num==0){
   
    }
                                                                                               
                                                                                           }
                                                                                                                                                                
                             
                %>
         
          <table align="center" width="" height="" border="0">
              <thead>
                  <tr>
                      <th>Profile Details</th>
                       <th>Old</th>
                        <th>New</th>
                  </tr>
              </thead>
              <tbody>
                
            <tr>
                <td><font color="black">Phone *:</font></td>
                <td><%=phone%></td>
                <td><input type="text" maxlength="10" min="10" name="phone" required="" pattern="([0-9])+(?:-?\d){9}" title="Phone number must be 10 digits not character" /><br></td>
            </tr>
            <tr>
                <td><font color="black">Email *:</font></td>
                <td><%=email%></td>
                 <td><input type="email"  name="email" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Email must contain @ And . eg:abc@gmail.com" /></td>
            </tr>
            <tr>
                <td><font color="black">Address *:</font></td>
                <td><%=address%></td>
                <td><textarea name="address" value="address" required=""></textarea></td>
            </tr>
            <tr>
                <td><font color="black">City *:</font></td>
                <td><%=city%></td>
                <td> <input type="text" class="long" name="city" required="" pattern="[A-Za-z]{5,}" title="Name must be character not digits and whitespace not allowed must have 6 letters"/></td>
            </tr>
            <tr>
                <td><font color="black">State *:</font></td>
                <td><%=state%></td>
                <td><select name="state" required="">
                        <option value="" selected="selected" disabled="disabled">Select Your state</option>
                       <option value="Tamilnadu">Tamilnadu</option>
                        <option value="Kerala">kerala </option>
                         <option value="Karnataka">Karnataka </option>
                          <option value="Rajastan">Rajastan </option>
                           <option value="Madyapradesh">Madyapradesh </option>
                            <option value="Gujarath">Gujarath </option>
                        </select></td>
            </tr>
              </tbody>
          </table>
             
             
                    
      </div>
                  <div class="splitnone">
              <p align="center">
                       <label> 
                           <font color="darkred" size="4">${errormessage}</font>    
                       </label>
                       
                   </p>
          <div>
                     <p align="center"> <input type="submit" class="smallrounded blackbutton"  name="Submit" value="Update"/>
                         <input type="reset" class="smallrounded blackbutton"  name="Submit2" value="Reset"/> </p></div> 
          

        </div>  
            </form>  

        
        
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
<!-- End Scroll To Top Div -->
</body>
</html>