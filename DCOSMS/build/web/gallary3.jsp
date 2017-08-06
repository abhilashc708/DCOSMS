
<!DOCTYPE HTML>
<html>
<head>
<title>dcosms|gallary</title>
<meta charset="utf-8">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="grey">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
<link href="images/favicon.png" rel="shortcut icon">
<link href="images/favicon.png" rel="bookmark icon">
<link href="css/main.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min-latest.js"></script>
<script src="js/jquery.nivo.slider.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/custom.js"></script>
<script>
$(document)
    .ready(function () {
    var $container = $('#portfolio-container')
    // initialize Isotope
    $container.isotope({
        // options...
        resizable: false, // disable normal resizing
        layoutMode: 'fitRows',
        itemSelector: '.element3',
        animationEngine: 'best-available',
        // set columnWidth to a percentage of container width
        masonry: {
            columnWidth: $container.width() / 5
        }
    });
    // update columnWidth on window resize
    $(window)
        .smartresize(function () {
        $container.isotope({
            // update columnWidth to a percentage of container width
            masonry: {
                columnWidth: $container.width() / 5
            }
        });
    });
    $container.imagesLoaded(function () {
        $container.isotope({
            // options...
        });
    });
    $('#portfolio-filter a')
        .click(function () {
        var selector = $(this)
            .attr('data-filter');
        $container.isotope({
            filter: selector
        });
        return false;
    });
});
</script>
<script charset="utf-8">
$(document)
    .ready(function () {
    $("a[rel^='prettyPhoto']")
        .prettyPhoto();
});
</script>
</head>
<body>
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
          <li><a href="home">Home</a></li>
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
    <div id="logo"> <a href="index.html">DCO-SMS</a> </div>
    <!-- End Logo area -->
  </div>
  <!-- End Social & Logo area -->
</div>
<div id="main">
  <!-- Start H1 Title -->
  <div class="titlesnormal">
    <h1>Gallary</h1>
    <span></span> </div>
  <!-- End H1 Title -->
  <!-- Start Main Body Wrap -->
  <div id="main-wrap">
    <!-- Start Box -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
        <!-- Start None Split Section -->
        <div class="splitnone">
          <div id="portfolio-filter-choice"><a href="gallary2"><img src="images/2column.png" alt="" width="25" height="25"></a> <a href="gallary3"><img src="images/3column.png" alt="" width="25" height="25"></a> <a href="gallary"><img src="images/4column.png" alt="" width="25" height="25"></a></div>
          <!-- Start Portfolio Filter -->
          <div id="portfolio-filter">
             <ul>
              <li><strong>Filter: </strong></li>
              <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter="*">show all</a></li>
              <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter=".web">Jersey</a></li>
              <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter=".graphic">Brown Swiss</a></li>
              <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter=".print">Guernsey</a></li>
              <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter=".logo">Ayrshire</a></li>
            </ul>
          </div>
          <!-- End Portfolio Filter -->
        </div>
        <!-- End None Split Section -->
      </div>
      <span class="box-arrow"> </span> </div>
    <!-- End Box -->
    <!-- Start Box -->
    <div class="boxes-full">
      <div class="boxes-padding fullpadding">
        <!-- Start None Split Section -->
        <div class="splitnone">
        <div id="portfolio-container">
            <!-- Start 4 column portfolio -->
            <div class="element3 web">
              <div class="portfoliowrap">
                
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l1.jpg" rel="prettyPhoto"><img src="images/latest-projects/img1.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 graphic">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l2.jpg" rel="prettyPhoto"><img src="images/latest-projects/img2.jpg" alt=""></a></div>
              
              </div>
            </div>
            <div class="element3 logo">
              <div class="portfoliowrap">
                
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l3.jpg" rel="prettyPhoto"><img src="images/latest-projects/img3.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 print">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l4.jpg" rel="prettyPhoto"><img src="images/latest-projects/img4.jpg" alt=""></a></div>
              
              </div>
            </div>
            <div class="element3 web">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l5.jpg" rel="prettyPhoto"><img src="images/latest-projects/img5.jpg" alt=""></a></div>
                
              </div>
            </div>
               <div class="element3 graphic web">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l6.jpg" rel="prettyPhoto"><img src="images/latest-projects/img6.jpg" alt=""></a></div>
               
              </div>
            </div>
           <div class="element3 logo">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l7.jpg" rel="prettyPhoto"><img src="images/latest-projects/img7.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 print">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l8.jpg" rel="prettyPhoto"><img src="images/latest-projects/img8.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 web">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l9.jpg" rel="prettyPhoto"><img src="images/latest-projects/img9.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 graphic web">
              <div class="portfoliowrap">
              
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l10.jpg" rel="prettyPhoto"><img src="images/latest-projects/img10.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 logo">
              <div class="portfoliowrap">
                
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l11.jpg" rel="prettyPhoto"><img src="images/latest-projects/img11.jpg" alt=""></a></div>
              
              </div>
            </div>
             <div class="element3 print">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l12.jpg" rel="prettyPhoto"><img src="images/latest-projects/img12.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 web">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l13.jpg" rel="prettyPhoto"><img src="images/latest-projects/img13.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 graphic web">
              <div class="portfoliowrap">
              
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l14.jpg" rel="prettyPhoto"><img src="images/latest-projects/img14.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 logo">
              <div class="portfoliowrap">
                
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l15.jpg" rel="prettyPhoto"><img src="images/latest-projects/img15.jpg" alt=""></a></div>
              
              </div>
            </div>
             <div class="element3 print">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l16.jpg" rel="prettyPhoto"><img src="images/latest-projects/img16.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 web">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l17.jpg" rel="prettyPhoto"><img src="images/latest-projects/img17.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 graphic web">
              <div class="portfoliowrap">
              
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l18.jpg" rel="prettyPhoto"><img src="images/latest-projects/img18.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 logo">
              <div class="portfoliowrap">
                
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l19.jpg" rel="prettyPhoto"><img src="images/latest-projects/img19.jpg" alt=""></a></div>
              
              </div>
            </div>
             <div class="element3 print">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l20.jpg" rel="prettyPhoto"><img src="images/latest-projects/img20.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 web">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l21.jpg" rel="prettyPhoto"><img src="images/latest-projects/img21.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 graphic web">
              <div class="portfoliowrap">
              
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l22.jpg" rel="prettyPhoto"><img src="images/latest-projects/img22.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 logo">
              <div class="portfoliowrap">
                
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l23.jpg" rel="prettyPhoto"><img src="images/latest-projects/img23.jpg" alt=""></a></div>
              
              </div>
            </div>
             <div class="element3 print">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l24.jpg" rel="prettyPhoto"><img src="images/latest-projects/img24.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 web">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l25.jpg" rel="prettyPhoto"><img src="images/latest-projects/img25.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 graphic web">
              <div class="portfoliowrap">
              
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l26.jpg" rel="prettyPhoto"><img src="images/latest-projects/img26.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 logo">
              <div class="portfoliowrap">
                
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l27.jpg" rel="prettyPhoto"><img src="images/latest-projects/img27.jpg" alt=""></a></div>
              
              </div>
            </div>
             <div class="element3 print">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l28.jpg" rel="prettyPhoto"><img src="images/latest-projects/img28.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 web">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l29.jpg" rel="prettyPhoto"><img src="images/latest-projects/img29.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 graphic web">
              <div class="portfoliowrap">
              
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l30.jpg" rel="prettyPhoto"><img src="images/latest-projects/img30.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 logo">
              <div class="portfoliowrap">
                
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l31.jpg" rel="prettyPhoto"><img src="images/latest-projects/img31.jpg" alt=""></a></div>
              
              </div>
            </div>
             <div class="element3 print">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l32.jpg" rel="prettyPhoto"><img src="images/latest-projects/img32.jpg" alt=""></a></div>
               
              </div>
            </div>
            <div class="element3 web">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l33.jpg" rel="prettyPhoto"><img src="images/latest-projects/img33.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 graphic web">
              <div class="portfoliowrap">
              
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l34.jpg" rel="prettyPhoto"><img src="images/latest-projects/img34.jpg" alt=""></a></div>
                
              </div>
            </div>
             <div class="element3 logo">
              <div class="portfoliowrap">
                
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l35.jpg" rel="prettyPhoto"><img src="images/latest-projects/img35.jpg" alt=""></a></div>
              
              </div>
            </div>
             <div class="element3 print">
              <div class="portfoliowrap">
               
                <div class="portfolioimage"><a href="images/latest-projects/larger-images/l36.jpg" rel="prettyPhoto"><img src="images/latest-projects/img36.jpg" alt=""></a></div>
               
              </div>
            </div>
            <!-- End 4 column portfolio -->
          </div>
        </div>
        <!-- End None Split Section -->
      </div>
    <!-- End Box -->
  </div>
  <!-- End Main Body Wrap -->
</div>
<!-- Start Footer -->
<div id="footer1">
  <!-- Start Footer Top -->
  <div id="footertop">
    <div class="footerwrap">
      <!-- Start Latest Tweets -->
     
      <!-- End Latest Tweets -->
      <!-- Start Useful Links -->
     
      <!-- End Useful Links -->
      <!-- Start Testimonials -->

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
</body>
</html>