<%@page import="java.util.Random"%>
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
<%!
public int generaterandomnumber(int start,int end){
Random random=new Random();
long fraction=(long)((end-start+1)*random.nextDouble());
return ((int)(fraction+start));

}
%>
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
            <li><a href="adminpage">Home</a></li>
          <li><a href="#" class="current">Employee manage</a>
            <ul>
              <li><a href="addemployee">Add emplyoee</a></li>
              <li><a href="viewemployee">View employee Details</a></li>
              <li><a href="employeedelet">Delete employee</a></li>
              <li><a href="updateemployee">modify employee</a></li>
            </ul>
          </li>
          <li><a href="#">Milk Details</a>
            <ul>
                
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
  <!-- End Social & Logo area -->
</div>
<div id="main">
  <!-- Start H1 Title -->
  <div class="titlesnormal">
    <h1> register new employee</h1>
    <span></span> </div>
  <!-- End H1 Title -->
  <!-- Start Main Body Wrap -->
  <div id="main-wrap">
    <!-- Start Latest Project titles -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
           <div id="contactwarning"></div>
        <div id="contactajax"></div>
        <form action="empregister" method="post" name="ajaxcontactform" id="ajaxcontactform">
       
        <!-- End 2 Half Split Section -->
       
        <!-- Start Third Split Section -->
      <div class="split2">
         
          <fieldset class="row2">
              <legend><font size="6">Employee Details</font>
                </legend>
              <table width="250" height="100" border="0">
                    <tbody>
                        <tr><td>
                    <label>Name *:
                    </label><br></td>
                    <td><input id="name" type="text" class="long" name="name" required="" pattern="[A-Za-z]{5,15}" title="Name must be character not digits and legth between 5 to 15 and whitespace not allowed" value=""/><br></td>
                        </tr>
                        <tr><td>
                    <label>Phone *:
                    </label><br><br></td>
                    <td> <input type="text" maxlength="10" min="10" name="phone" required="" pattern="([0-9])+(?:-?\d){9}" title="Phone number must be 10 digits not character" /><br><br></td>
                        </tr>
                        <tr><td>
                    <label>Email *:
                    </label></td>
                    <td><input type="email"  name="email" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Email must contain @ And . eg:abc@gmail.com" /></td>
                        </tr>
                        <tr><td>
                    <label>Address *:
                    </label><br><br></td>
                            <td> <textarea name="address" value="address" required=""></textarea><br><br></td>
                        </tr>
                        <tr><td>
                    <label>State *:
                    </label></td>
                    <td><select name="state" required="">
                        <option value="" selected="selected" disabled="disabled">Select Emp state</option>
                        <option value="Tamilnadu">Tamilnadu</option>
                        <option value="Kerala">kerala </option>
                         <option value="Karnataka">Karnataka </option>
                          <option value="Rajastan">Rajastan </option>
                           <option value="Madyapradesh">Madyapradesh </option>
                            <option value="Gujarath">Gujarath </option>
                        </select></td>
                        </tr>
                        <tr><td>
                    <label>Salary *:
                    </label></td>
                    <td> <input type="text" maxlength="6" name="salary" required="" pattern="([0-9])+(?:-?\d){3}" title="Salary contain digits not character staring salary 1000" /></td>
                        </tr>
                  </tbody>
                </table>
            </fieldset>
        </div>
        <div class="split2">
          
          <fieldset class="row1">
                <legend><font size="6">Account Details</font>
                </legend>
              <table width="250" height="60" border="0">
                  <tbody>
                      <tr>
                          <td>  <label>Emp ID *:
                              </label></td>
                              <td> <input type="text" name="empid" value="emp<%=generaterandomnumber(100000,999999)%>" readonly="readonly"/></td>
                   </tr>
                   <tr>
                       <td><label> Password *:
                    </label></td>
                    <td><input type="password" name="pass" required=""/></td>
                   </tr>
              
                </tbody>
               </table>
            </fieldset><br>
           <fieldset class="row3">
                <legend><font size="6">Further Information</font>
                </legend>
                <p>
                    <label>Gender *:</label>
                    <input type="radio" value="male" name="gender" required=""/>
                    <label class="gender">Male</label>
                    <input type="radio" value="female" name="gender" required=""/>
                    <label class="gender">Female</label>
                </p>
                <p>
                    <label>Birthdate *:
                    </label>
                    <select class="date" name="day" required="">
                        <option value="" selected="selected" disabled="disabled">day</option>
                        <option value="1">01
                        </option>
                        <option value="2">02
                        </option>
                        <option value="3">03
                        </option>
                        <option value="4">04
                        </option>
                        <option value="5">05
                        </option>
                        <option value="6">06
                        </option>
                        <option value="7">07
                        </option>
                        <option value="8">08
                        </option>
                        <option value="9">09
                        </option>
                        <option value="10">10
                        </option>
                        <option value="11">11
                        </option>
                        <option value="12">12
                        </option>
                        <option value="13">13
                        </option>
                        <option value="14">14
                        </option>
                        <option value="15">15
                        </option>
                        <option value="16">16
                        </option>
                        <option value="17">17
                        </option>
                        <option value="18">18
                        </option>
                        <option value="19">19
                        </option>
                        <option value="20">20
                        </option>
                        <option value="21">21
                        </option>
                        <option value="22">22
                        </option>
                        <option value="23">23
                        </option>
                        <option value="24">24
                        </option>
                        <option value="25">25
                        </option>
                        <option value="26">26
                        </option>
                        <option value="27">27
                        </option>
                        <option value="28">28
                        </option>
                        <option value="29">29
                        </option>
                        <option value="30">30
                        </option>
                        <option value="31">31
                        </option>
                    </select>
                    <select name="month" required="">
                        <option value="" selected="selected" disabled="disabled">month</option>
                        <option value="1">January
                        </option>
                        <option value="2">February
                        </option>
                        <option value="3">March
                        </option>
                        <option value="4">April
                        </option>
                        <option value="5">May
                        </option>
                        <option value="6">June
                        </option>
                        <option value="7">July
                        </option>
                        <option value="8">August
                        </option>
                        <option value="9">September
                        </option>
                        <option value="10">October
                        </option>
                        <option value="11">November
                        </option>
                        <option value="12">December
                        </option>
                    </select>
                    <input class="year" type="text" size="4" maxlength="4" name="year" required=""/>e.g 1976
                </p>
                <p>
                    <label>Nationality *:
                    </label>
                    <select name="national" required="">
                        <option value="" selected="selected" disabled="disabled">select national</option>
                        <option value="uk">UK
                        </option>
                        <option value="india">India
                        </option>
                        <option value="us">US
                        </option>
                    </select>
                </p>
                
               
            </fieldset>
        </div>
        <div class="splitnone">
            
             <p align="center">
                       <label> 
                           <font color="darkred" size="4">${errormessage}</font>    
                       </label>
                       
                   </p>
          <div>
                     <p align="center"> <input type="submit" class="smallrounded blackbutton"  name="Submit" value="Register"/>
                         <input type="reset" class="smallrounded blackbutton"  name="Submit2" value="Reset"/> </p></div> 
          

        </div>
        
</form>
        
        
        <!-- End Third Split Section -->
        
        <!-- Start one 3rd and two 3rd Split Section -->
        
        
        <!-- End one 3rd and two 3rd Split Section -->
       
      
        
        
        
        <!-- End Quater Split Section -->
      </div>
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