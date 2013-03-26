<!--
	Copyright 2009 Jeremie Tisseau
	"Sliding Login Panel with jQuery 1.3.2" is distributed under the GNU General Public License version 3:
	http://www.gnu.org/licenses/gpl-3.0.html
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
  	<title>Sliding Login Panel with jQuery 1.3.2</title>
  	<meta name="description" content="Demo of a Sliding Login Panel using jQuery 1.3.2" />
  	<meta name="keywords" content="jquery, sliding, toggle, slideUp, slideDown, login, login form, register" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />	

	<!-- stylesheets -->
  	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="css/slide.css" type="text/css" media="screen" />
	
  	<!-- PNG FIX for IE6 -->
  	<!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
	<!--[if lte IE 6]>
		<script type="text/javascript" src="js/pngfix/supersleight-min.js"></script>
	<![endif]-->
	 
    <!-- jQuery - the core -->
	<!-- Sliding effect -->
	 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<link rel="stylesheet" href="css/login_style.css" type="text/css"></link>

 <script>
$(function() {
$( "#accordion" ).accordion();
});
</script>
</head>

<body>
<div id="header_wrapper">
            <div id="header">
                <h1>QnA</h1>
                
                <h1><a href="teamActivity.html"  style="color=#FFFFFF">Team Activity </a></h1>
                <a href="#" class="login_btn"><span>Login</span><div class="triangle"></div></a>
                <div id="login_box">
                    <div id="tab"><a href="..." class="login_btn"><span>Login</span><div class="triangle"></div></a></div>
                    <div id="login_box_content"></div>
                    <div id="login_box_content">
                        <form id="login_form" action="login.htm">
                            <h2>Please Login with</h2>
                            <input type="text" placeholder="Username" />
                            <input type="password" placeholder="Password" />
                            <input type="submit" value="Login" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
<!-- Panel -->
<!--panel -->

    <div id="container">
		<div id="content" style="padding-top:100px;">
			
			<div id="accordion">
<h3>Whats New</h3>
<div>
<p>
Upcoming Project's. for details logon..</a>
</p>
<ul>
<li>Mobify JS</li>
<li>Redesign Projects</li>
<li>Migration's Projects</li>
</ul>
<p>
Create you timesheet automatically</a>
</p>
<p>
Latest Tech News:- Why DustJS is so important</a>
</p>
<p>
Set your leave Calendar</a>
</p>
<p>
see Digital support new born baby</a>
</p>
<p>
Say Happy Bday to You</a>
</p>
</div>
<h3>Latest News</h3>
<div>
<p>
Ganesha's words on presentation on Hadoop with Social Data Analytics.
</p>
</div>
<h3>Achievement</h3>
<div>

<p>
Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
</p>
<ul>
<li>Self Post launch Mobify Project</li>
<li>Self Home Page Redesign</li>
<li>GQ Home Page Redesign</li>
</ul>
</div>
<h3>Ticket Count</h3>
<div>
<p>
Cras dictum. Pellentesque habitant morbi tristique senectus et netus
et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
mauris vel est.
</p>
<p>
Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
inceptos himenaeos.
</p>
</div>
</div>
			</div><!-- / content -->		
	</div><!-- / container -->
</body>
</html>
