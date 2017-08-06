
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
	
	$(document).ready(function(){
		$("#login").click(function(){
			
			var action = $("#loginform1").attr('action');
			var form_data = {
				username: $("#userid").val(),
				password: $("#pass").val(),
				is_ajax: 1
			};
			
			$.ajax({
				type: "POST",
				url: action,
				data: form_data,
				success: function(response)
				{
					if(response == "success")
						$("#loginform1").slideUp('slow', function(){
							$("#message").html('<p class="success">You have logged in successfully!</p><p>Redirecting....</p>');
						});
					else
						$("#message").html('<p class="error">ERROR: Invalid username and/or password.</p>');
				}	
			});
			return false;
		});
	});
	</script>
        <script type="text/javascript">
            window.onload = function()
            {
                document.getElementById("pass").onchange=validatePassword;
                document.getElementById("oldpass").onchange=validatePassword;
            }
            function validatePassword(){
                var pass1=document.getElementById("pass").value;
                var pass2=document.getElementById("oldpass").value;
                if(pass1!=pass2)
                    document.getElementById("oldpass").setCustomValidity("your current password is wrong");
                else
                    document.getElementById("oldpass").setCustomValidity('');
            }
            
        </script>
</head>
<body>
     <% String pass=session.getAttribute("pass").toString(); %>
     <% String uid=session.getAttribute("eid").toString(); %>
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
          <li><a href="#" >payment</a>
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
           <li><a href="changeemppass"  class="current">Change Password</a></li>
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
    <h1>Change Employee Password</h1>
    <span></span> </div>
  <!-- End H1 Title -->
  <!-- Start Main Body Wrap -->
  <div id="main-wrap">
    <!-- Start Latest Project titles -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
           <div id="contactwarning"></div>
        <div id="contactajax"></div>
        <form action="emppass" method="post" name="ajaxcontactform" id="ajaxcontactform" onsubmit="return checkForm(this);">
         <div class="splitnone">
               <fieldset class="row1">
                    
                <legend><font size="6">Password</font>
                </legend>
                   <p align="center">
                       <label> 
                           <font color="blue" size="4">${errormessage}</font>    
                       </label>
                       
                   </p>
                    <p align="center">
                    <input  type="hidden" name="uid" value="<%=uid%>" />
                    
                </p>
                <p align="center">
                    <input  type="hidden" name="pass" value="<%=pass%>" required="" id="pass" />
                    
                </p>
                <p align="center">
                    
                    <label><font color="black"> Old Password </font> :
                    </label>
                    <input  type="password" name="oldpass"  required="" id="oldpass"/>
                    
                </p>
                 <p align="center">
                    
                    <label><font color="black"> New Password </font> :
                    </label>
                     <input  type="password" name="newpass" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"  title="password must contain at least 6 characters, including upper/lower and numbers" onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');if(this.checkValidity()) form.coinfirmpass.pattern=this.value;" />
                    
                </p>
                 <p align="center">
                    
                    <label><font color="black"> Confirm password </font> :
                    </label>
                     <input  type="password" name="coinfirmpass" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="please enter the same password as above" onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title:'');"/>
                    
                </p>
               
            </fieldset>
             <div>
                     <p align="center"> <input type="submit" class="smallrounded blackbutton"  name="update" value="Update"/>
                         </p></div> 
             
        
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