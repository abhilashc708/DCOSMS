
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
<script type="text/javascript">
            window.onload = function()
            {
                document.getElementById("tots").onchange=validatePassword;
                document.getElementById("total").onchange=validatePassword;
            }
            function validatePassword(){
                var tots=document.getElementById("tots").value;
                var total=document.getElementById("total").value;
                if(tots<total)
                    document.getElementById("total").setCustomValidity("please check due pay........Enter currectly");
                else
                    document.getElementById("total").setCustomValidity('');
            }
            
        </script>
</head>
<body>
     <%
String userid=request.getParameter("userid");
String sdate=request.getParameter("sdate");
String edate=request.getParameter("edate");
String uname="";
String tmilk="";
String total="";


  try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
    Statement st=con.createStatement();
    ResultSet rs , rs1, rs2;
     rs=st.executeQuery("select * from milkcollect where userid='"+userid+"'");
 
   
    while(rs.next()){
        session.setAttribute("id",userid);
        uname=rs.getString(2);
    }
      rs1=st.executeQuery("SELECT SUM(quantity),SUM(total) from milkcollect where userid='"+userid+"' and date1 between '"+sdate+"' and '"+edate+"'");
       while(rs1.next()){
        tmilk=rs1.getString(1);
    }
    rs2=st.executeQuery("select * from useraccount where userid='"+userid+"'");
     while(rs2.next()){
       total=rs2.getString(2);  
    }
     
       }catch(Exception e)
       {
           out.print("Exception"+e);
       }  
                      
           %>
        
        <%
                  Date dat=new Date();
                 SimpleDateFormat sf=new SimpleDateFormat("dd-MM-yyyy");
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
            <li><a href="employeepage" >Home</a></li>
          <li><a href="#">User manage</a>
            <ul>
              <li><a href="userregister">Add User</a></li>
              <li><a href="viewuser">View User Details</a></li>
              <li><a href="deleteuser">Delete User</a></li>
            </ul>
          </li>
          <li><a href="#">milk Entry</a>
            <ul>
                   
                <li><a href="milkcollect">milk purchase</a></li>
                 <li><a href="viewmilk"> milk purchase details</a></li>
              <li><a href="milksales">milk sales</a></li>
               <li><a href="viewsales">  milk Sales details</a></li>
            
               
              
            </ul>
          </li>
          <li><a href="#" class="current">payment</a>
               <ul>
                   
              <li><a href="milkpay">purchase payment</a></li>
                <li><a href="viewpurchasepay"> purchase payment Details</a></li>
               <li><a href="salespay">  sales payment</a></li>
                <li><a href="viewsalespay">  sales payment Details</a></li>
              
            </ul>
          </li>
          <li><a href="#">posts</a>
          <ul>
              <li><a href="addpost">Add New posts</a></li>
              <li><a href="deletepost">Delete old post</a></li>
              
            </ul>
          </li>
           <li><a href="changeemppass">Change Password</a></li>
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
    <!-- End Logo area -->
  </div>
  <!-- End Social & Logo area -->
</div>
<div id="main">
  <!-- Start H1 Title -->
  <div class="titlesnormal">
      <h1>Payment Details</h1>
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
        <form name="form1" action="paymentconfirm" method="post" id="ajaxcontactform">
       <div class="split2">
         
          <fieldset class="row2">
              <legend><font size="6">Total Payment</font>
                </legend>
              <table width="250" height="100" border="0">
                  <tbody>
                      <tr>
                          <td> <label>User Id *:
                              </label></td>
                              <td><input id="name" type="text" class="long" name="userid" readonly="readonly"  value="<%=userid%>"/></td>
                      </tr>
                      <tr>
                          <td><label> Name *:
                    </label><br><br></td>
                    <td><input type="text"  name="name" readonly="readonly" value="<%=uname%>" /><br><br></td>
                      </tr>
                      <tr>
                          <td><label>Total Milk *:
                              </label></td>
                              <td>   <input type="text"  name="tmilk" readonly="readonly" value="<%=tmilk%>" /></td>
                      </tr>
                      <tr>
                          <td><label>Total Rs *:
                    </label></td>
                    <td><input type="text"  name="total" readonly="readonly" value="<%=total%>" id="tots" /></td>
                      </tr>
                </tbody>
              </table>
            </fieldset>
        </div>
        <div class="split2">
         
          <fieldset class="row2">
              <legend><font size="6">Due Payment</font>
                </legend>
              <table width="250" height="100" border="0">
                  <tbody>
                      <tr>
               
                          <td>  <label>Start Date*:
                              </label><br><br></td>
                              <td> <input type="text"  name="sdate" readonly="readonly" value="<%=sdate%>" /><br><br></td>
                      </tr>
              
                  <tr>
                      <td> <label>End Date*:
                          </label><br><br></td>
                          <td><input type="text"  name="edate" readonly="readonly" value="<%=edate%>" /><br><br></td>
                  </tr>
              
                  <tr>
                      <td><label>Due Amount*:
                          </label></td>
                          <td> <input id="total" type="text"  name="tpay" required="" value="" pattern="([0-9])+(?:-?\d){0}" title="price  must be  digits not character"  /></td>
              </tr>
                  </tbody>
              </table>
            </fieldset>
        </div>
            <div class="splitnone">
          <div>
                     <p align="center"> <input type="submit" class="smallrounded blackbutton"  name="Submit" value=" process"/>
                         </p></div> 
          

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