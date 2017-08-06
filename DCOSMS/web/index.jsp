
<!DOCTYPE HTML>
<html>
<head>
<title>www.dcosms.com</title>
<meta charset="utf-8">
<link href="images/favicon.png" rel="shortcut icon">
<link href="images/favicon.png" rel="bookmark icon">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="grey">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
<link href="css/main.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min-latest.js"></script>
<script src="js/jquery.nivo.slider.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
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
<script charset="utf-8">
$(document)
    .ready(function () {
    $("a[rel^='prettyPhoto']")
        .prettyPhoto();
});
</script>
<script>
function startTime() {
    var today=new Date();
    var h=today.getHours();
    var m=today.getMinutes();
    var s=today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('txt').innerHTML = h+":"+m+":"+s;
    var t = setTimeout(function(){startTime()},500);
}

function checkTime(i) {
    if (i<10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
</script>
</head>
<body onload="startTime()">
<div id="header">
  <!-- Start navigation area -->
  <div id="navigation">
    <div id="navigation_wrap">
      <!-- Start contact info area -->
      <div id="conteactinfo"><strong>Email:</strong> dcosmskerala@gmail.com | <strong>Phone:</strong> (+91) 9544 350 091 <div id="txt"></div> </div>
      <!-- End contact info area -->
      <!-- Start navigation -->
      <div id="navi">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="about">About Us</a></li>
          <li><a href="gallary">Gallary</a></li>
          <li><a href="newses">News</a></li>
          <li><a href="contact">Contact Us</a></li>
          <li><a href="login">Sign In</a></li>
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
    <div id="logo"> <a href="#">DCO-SMS</a> </div>
    
    <!-- End Logo area -->
  </div>
  <!-- End Social & Logo area -->
</div>
<div id="main">
  <!-- Start Slider Wrapping -->
  <div id="sliderwrap">
    <!-- Start Slider -->
    <div id="slider" class="nivoSlider"> <img src="images/slider-banners/1.jpg" alt=""> <img src="images/slider-banners/2.jpg" alt=""> <img src="images/slider-banners/3.jpg" alt=""><img src="images/slider-banners/4.jpg" alt=""><img src="images/slider-banners/5.jpg" alt=""><img src="images/slider-banners/6.jpg" alt=""><img src="images/slider-banners/7.jpg" alt=""><img src="images/slider-banners/8.jpg" alt=""><img src="images/slider-banners/9.jpg" alt=""><img src="images/slider-banners/10.jpg" alt=""> </div>
    <!-- End Slider -->
    <!-- Start Slider HTML Captions -->
    <div id="htmlcaption" class="nivo-html-caption"> <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>. </div>
    <!-- End Slider HTML Captions -->
  </div>
  <!-- End Slider Wrapping -->
  <!-- Start H1 Title -->
  <div class="titles">
    <h1>Welcome to DAIRY CO-OPERATIVE SOCIETY MANAGEMENT SYSTEM (dco-sms)</h1>
    <span></span> </div>
  <!-- End H1 Title -->
  <!-- Start Main Body Wrap -->
  <div id="main-wrap">
    <!-- Start Featured Boxes -->
    <div class="boxes-third boxes-first">
      <div class="boxes-padding">
        <div class="bti">
            <a href="#">
          <div class="featured-images"><img src="images/responsive-icon.png" width="72" height="53" alt=""></div>
          <div class="featured-titles">Daily NEWS</div>
          </a>
        </div>
        <div class="featured-text">We are Providing Daily Newses About Milk And Diary Firms, And Also Pubish and Current Milk price.</div>
      </div>                        
      <span class="box-arrow"></span> </div>
    <div class="boxes-third">
      <div class="boxes-padding">
        <div class="bti">
            <a href="#">
          <div class="featured-images"><img src="images/cleansleek-icon.png" width="66" height="53" alt=""></div>
          <div class="featured-titles">awareness</div>
          </a>
        </div>
        <div class="featured-text">We are conducting awareness programs And classes, That help to develop your skills in this field.</div>
      </div>
      <span class="box-arrow"></span> </div>
    <div class="boxes-third boxes-last">
      <div class="boxes-padding">
        <div class="bti">
            <a href="#">
          <div class="featured-images"><img src="images/responsive-icon.png" width="54" height="53" alt=""></div>
          <div class="featured-titles">cow diseases</div>
          </a>
        </div>
        <div class="featured-text">All Cow diseases will be publish in this website, For the help of vetinary docters, Must use for you.</div>
      </div>
      <span class="box-arrow"></span> </div>
    <!-- End Featured Boxes -->
    <!-- Start Latest Project titles -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
        <h1>our features</h1>
      </div>
      <span class="box-arrow"></span> </div>
    <!-- End Latest Project titles -->
    <!-- Start Latest 3 Projects -->
    <div class="boxes-third boxes-first">
      <div class="latestthree">
        <div class="title"> large amount of milk collect <span class="titlearrow"></span> </div>
        <div class="latestthreeimage"><a href="images/latest-projects/larger-images/1.jpg" rel="prettyPhoto"><img src="images/latest-projects/3.jpg" alt="" width="305" height="132" border="0"></a></div>
        <div class="text"> Daily Large Amount and good quality Milk will be collected our society branches. <span class="textarrow"></span> </div>
      </div>               
    </div>
    <div class="boxes-third">
      <div class="latestthree">
        <div class="title"> milk sells <span class="titlearrow"></span> </div>
        <div class="latestthreeimage"><a href="images/latest-projects/larger-images/1.jpg" rel="prettyPhoto"><img src="images/latest-projects/4.jpg" alt="" width="305" height="132" border="0"></a></div>
        <div class="text"> Daily Large Amount and good quality Milk will be selled to Customers and Big factories. <span class="textarrow"></span> </div>
      </div>              
    </div>
    <div class="boxes-third boxes-last">
      <div class="latestthree">
        <div class="title"> give subsidies <span class="titlearrow"></span> </div>
        <div class="latestthreeimage"><a href="images/latest-projects/larger-images/1.jpg" rel="prettyPhoto"><img src="images/latest-projects/2.jpg" alt="" width="305" height="132" border="0"></a></div>
        <div class="text">  We are providing Subsidies and discounts our customers through directly our brach societies. <span class="textarrow"></span> </div>
      </div>
    </div>
    <!-- End Latest 3 Projects -->
  </div>
  <!-- End Main Body Wrap -->
</div>
<!-- Start Footer -->
<div id="footer">
  <!-- Start Footer Top -->
  <div id="footertop">
    <div class="footerwrap">
        
             <div class="split3">
            <div id="usefultitle">Animal Diseases</div>
          <!-- Start Toggle -->
          <div class="togglewrap">
            <div class="toggletitle"><a>Tick Damage</a></div>
            <div class="togglecontent">
              <p>Ticks can cause serve damage to cattle, particularly around the udder and ears. The wounds will often get infected with bacteria and might be attacked by files. Some ticks cause greater damage than others, such as the ones which infect cattle with heartwater.</p>
            </div>
            <div class="toggletitle"><a>Tick-born diseases</a></div>
            <div class="togglecontent">
              <p>Tick can also infect cattle with redwater, gallsickness and heartwater. European breeds tend to be at grater risk from these diseases than indigenous and barhman type breeds. Older animal are more at risk than young animals for redwater and gallsickness. Prevention of tick-borne diseases is by tick control, as already mentioned.</p>    
            </div>
            <div class="active toggletitle"><a>Heartwater</a></div>
            <div class="togglecontent">
              <p>Signs of heartwater are fever, depression, high-stepping, leading to convulsions and death. Treatment is with Tetracycline, as already mentioned. </p>
            </div>
          </div>
          <!-- End Toggle -->
        </div>
      
        
         
      <!-- Start Latest Tweets -->
           <div class="split3">
        <div id="usefultitle">Good dairy farming practices</div>
          <!-- Start Tab -->
          <div class="tabs_container">
            <!-- Start Tabs Buttons -->
            <ul class="tabs">
              <li class="active"> <a rel="#tab_1_contents" class="tab">Tab 1</a> </li>
              <li><a rel="#tab_2_contents" class="tab">Tab 2</a></li>
              <li><a rel="#tab_3_contents" class="tab">Tab 3</a></li>
            </ul>
            <!-- End Tabs Buttons -->
            <!-- Start Tab Bodies -->
            <div class="clear"></div>
            <!-- Start Tab Bodies -->
            <div class="tab_contents_container">
              <div id="tab_1_contents" class="tab_contents tab_contents_active">
                <h3>ANIMAL HEALTH</h3>
                <p>Animals that produce milk need to be healthy and an effective health care programme should be in place. Establish the herd with resistance to disease. Prevent entry of disease onto the farm. Have an tive herd health management programme in place. Use all chemicals and veterinary medicines as directed.</p>
                   
              </div>
              <div id="tab_2_contents" class="tab_contents">
                <h3>MILKING HYGIENE</h3>
                <p> Milk should be harvested and stored under hygienic conditions. Equipment used to harvest and store milk should be suitable and well maintained. Ensure milking routines do not injure the animals or introduce contaminants* into milk. Ensure milking is carried out under hygienic conditions. Ensure milk is handled properly after milking.</p>
                  
              </div>
              <div id="tab_3_contents" class="tab_contents">
                <h3>NUTRITION (FEED AND WATER)</h3>
                <p>Animals need to be fed and watered with products of suitable quality and safety. Secure feed and water supplies from sustainable sources. Ensure animal feed and water are of suitable quantity and quality. Ensure the traceability of feedstuffs brought on to the farm.Control storage conditions of feed.</p>
                   
              </div>
            </div>
            <!-- End Tab Bodies -->
          </div>
          <!-- End Tab -->
        </div>
     
      
  
      <!-- End Latest Tweets -->
      <!-- Start Useful Links -->
      
      
      <!-- End Useful Links -->
      <!-- Start Testimonials -->
      <div id="latest-testimonial">
        <div id="testimonialtitle">Contact Us</div>
        <div id="testimonialbody">
          <!-- Starting simple slider -->
          <div id="simpleslider">
            <!-- Slide 1 -->
            <div class="current">
              <h6>Contact Us</h6>
              <p>Head Office:<br>Managing Director<br>Kerala Co-operative society management system Ltd.,<br>Malampuzha Milk Production,<br>Palakkad 678001- Kerala<br>Phones :04924-234645</p>
            </div>
            <!-- End Slide 1 -->
            <!-- Slide 2 -->
            <div>
              <h6>Contact Us</h6>
              <p><u>CORPORATIVE OFFICE</u><br>General Manager(Marketing)<br>TCMPF LTD, 2, milk society,<br>Thachampara,<br>Palakkad 678001<br>Phones:23465647</p>
            </div>
            <!-- End Slide 2 -->
            <!-- Slide 3 -->
            <div>
              <h6>Our Vision</h6>
              <p>To take a lead role in making the state self sufficiant in milk production and fodder production, strengthening the diary.</p>
                 
            </div>
            <!-- End Slide 3 -->
            <!-- Slide 4 -->
            <div>
              <h6>Our Mission</h6>
              <p>Target of 35 lakhs metric tonnes by comming years. To promote Quality forage production for economic milk production.</p>
            </div>
            <!-- End Slide 4 -->
            <!-- Slide 5 -->
            <!-- End Slide 5 -->
          </div>
          <!-- Ending simple slider -->
          <div class="speachlower"></div>
        </div>
      </div>
      <!-- End Latest Testimonials -->
    </div>
  </div>
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