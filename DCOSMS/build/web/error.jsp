<%-- 
    Document   : error
    Created on : 14 Jan, 2017, 6:30:08 PM
    Author     : Abhilash
--%>
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>404 error page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link href="css2/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<!-----start-wrap--------->
	<div class="wrap">
		<!-----start-content--------->
		<div class="content">
			<!-----start-logo--------->
			<div class="logo">
				<h1><a href="#"><img src="images/logo.png"/></a></h1>
				<span><img src="images/signal.png"/>Oops! The Page you requested was not found!</span>
			</div>
			<!-----end-logo--------->
			<!-----start-search-bar-section--------->
			<div class="buttom">
				<div class="seach_bar">
					<p> <br>you can go to <span><a href="http://localhost:8081/DCOSMS/"><b><font color="blue">HOME</font></b></a></span> page <!--or search here--></p>
					<!-----start-sear-box--------->
					<!--<div class="search_box">
					<form>
					   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
				    </form>
					 </div>-->
				</div>
			</div>
			<!-----end-sear-bar--------->
		</div>
		<!----copy-right-------------->
	<p class="copy_right"> ©2016.All Rights Reserved. People Projects From dco-sms.<a href="http://localhost:8081/DCOSMS/" target="_blank">&nbsp;dco-sms</a> </p>
	</div>
	
	<!---------end-wrap---------->
</body>
</html>