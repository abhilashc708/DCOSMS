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
            <li><a href="employeepage" >Home</a></li>
          <li><a href="#"  class="current">User manage</a>
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
          <li><a href="#">payment</a>
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
    <h1>customer registration</h1>
    <span></span> </div>
  <!-- End H1 Title -->
  <!-- Start Main Body Wrap -->
  <div id="main-wrap">
    <!-- Start Latest Project titles -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
           <div id="contactwarning"></div>
        <div id="contactajax"></div>
        <form action="userregistration" method="post" name="ajaxcontactform" id="ajaxcontactform">
        <!-- Start None Split Section -->
        
        <!-- End None Split Section -->
       
      
        <!-- Start 2 Half Split Section -->
        <div class="split2">
         
          <fieldset class="row2">
              <legend><font size="6">Personal Details</font>
                </legend>
                   <table width="250" height="100" border="0">
                       <tbody>
                           <tr>
                               <td><label>Name *:
                                   </label></td>
                                   <td><input id="name" type="text" class="long" name="name" required="" pattern="[A-Za-z]{5,15}" title="Name must be character not digits and legth between 5 to 15 and whitespace not allowed" value=""/></td>
               
                           </tr>
                           <tr>
                               <td><label>Phone *:
                                   </label><br><br></td>
                               <td><input type="text" maxlength="10" min="10" name="phone" required="" pattern="([0-9])+(?:-?\d){9}" title="Phone number must be 10 digits not character" value="" /><br><br></td>
                           </tr>
                           <tr>
                               <td>
                    <label>Email *:
                    </label></td>
                    <td> <input type="email"  name="email" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Email must contain @ And . eg:abc@gmail.com" /></td>
                
                           </tr>
                           <tr>
                               <td><label>Address *:
                                   </label><br><br></td>
                               <td>   <textarea name="address" value="address" required=""></textarea><br><br></td>
                       </tr>
               
                       <tr>
                           <td> <label>Street :
                               </label></td>
                               <td>  <input type="text" class="long"  name="street" required="" pattern="[A-Za-z]{5,}" title="Street must be character not digits and whitespace not allowed, include atleast 5 characters" /></td>
              </tr>
              <tr>
                  
                  <td>  <label>City *:
                      </label><br><br></td>
                      <td>   <input type="text" class="long" name="city" required="" pattern="[A-Za-z]{5,}" title="City must be character not digits and whitespace not allowed, include atleast 5 characters" /><br><br></td>
              </tr>
              <tr>
                  <td> <label>State *:
                    </label></td>
                    <td> <select name="state" required="">
                        <option value="" selected="selected" disabled="disabled">Select Customer state</option>
                        <option value="tamilnadu">tamilnadu</option>
                        <option value="kerala">kerala </option>
                        </select></td>
                   </tr>
                   <tr>
                       <td><label>National:
                           </label></td>
                           <td>  <select name="national" required="">
                        <option value="" selected="selected" disabled="disabled">select national</option>
                        <option value="uk">uk
                        </option>
                        <option value="india">India
                        </option>
                               </select></td>
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
                          <td> <label>User ID  * :
                              </label></td>
                              <td><input type="text" name="userid" value="user<%=generaterandomnumber(1000000,9999999)%>" readonly="readonly"/></td>
                      </tr><tr>
                              <td> <label> Password *:
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
                     <label>Animal *:</label>
                     <input type="checkbox"  value="cow" name="animal" />
                    <label class="gender">cow </label>
                   
                    <input type="checkbox" value="goat" name="animal"  />
                      <label class="gender">goat </label>
                      <input type="checkbox" value="buffello" name="animal"  />
                      <label class="gender">buffello </label>
                </p>
                <p>
                    <label>No of animals *:
                    </label>
                    <input class="year" type="text" size="2" maxlength="2" name="noanimal" pattern="([0-9])+(?:-?\d){0}" title="No of animal  must be digits not character" required=""/>
                </p>
                
               
            </fieldset>
        </div>
        <div class="splitnone">
              <p align="center">
                       <label> 
                           <font color="blue" size="4">${errormessage}</font>    
                       </label>
                       
                   </p>
          <div>
                     <p align="center"> <input type="submit" class="smallrounded blackbutton"  name="Submit" value="Register"/>
                         <input type="reset" class="smallrounded blackbutton"  name="Submit2" value="Reset"/> </p></div> 
          

        </div>
        
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