<%-- 
    Document   : footer
    Created on : Aug 24, 2022, 11:10:15 AM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
        <style>
            /*css for footer*/


* {
  font-family: Open Sans;
}


.footer-distributed{
	background: #666;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 55px 50px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 40%;
}

/* The company logo */

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Open Sans', cursive;
	margin: 0;
}

.footer-distributed h3 span{
	color:  lightseagreen;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
  font-weight:400;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #222;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}

.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}
.footer-distributed .footer-center i.fa-map-marker{
	font-size: 17px;
	line-height: 38px;
}
.footer-distributed .footer-center i.fa-phone{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
  font-weight:400;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  lightseagreen;
	text-decoration: none;;
}

.footer-distributed .footer-links a:before {
  content: "|";
  font-weight:300;
  font-size: 20px;
  left: 0;
  color: #fff;
  display: inline-block;
  padding-right: 5px;
}

.footer-distributed .footer-links .link-1:before {
  content: none;
}

/* Footer Right */

.footer-distributed .footer-right{
	width: 20%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}


.footer-distributed .footer-icons img{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

.footer-distributed .footer-icons img{
    width:30px;
}
/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 880px) {

	.footer-distributed{
		font: bold 14px sans-serif;
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}
        </style>
    </head>
    <body>
        
        <footer class="footer-distributed">

			<div class="footer-left">
<nav>

				 <img style=" width: 60px;cursor: pointer;" src="images/raise-hand.png"><h3 style="margin-right:0.5in;">COLLEGE VOTING</h3>
</nav>
				<p class="footer-links">
					<a href="index.jsp" class="link-1">Home</a>
					
					
				
					<a href="collegelogin">COLLEGE LOGIN</a>
				
					<a href="adminlogin.jsp">ADMIN LOGIN</a>
					
					
					
					<a href="">Contact</a>
				</p>

				<p class="footer-company-name">COLLEGE VOTING © 2022</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa-solid fa-location-dot"></i>
					<p><span>ITI Layout,katriguppe</span> Bangalore, Karnataka</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+91 8792814590</p><br>
                                        <p style="margin-left:0.75in;">+91 7975062645</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="jagadishravi03@gmail.com">jagadishravi03@gmail.com</a></p><br>
                                        <p style="margin-left:0.75in;"><a href="vijaybairava1442@gmail.com">vijaybairava1442@gmail.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the Website</span>
					college voting system is a software application that offers knowledge about students,candidates and consumers. for voting purposes,this app is optimized,saving a lot of time,and counting is done in a single single click.
				</p>

				<div class="footer-icons">

					<a href="https://www.facebook.com/vijay1442"><img src="images/facebook.png"></a>
					<a href="https://instagram.com/mr._mt15_pilot?igshid=YmMyMTA2M2Y="><img src="images/instagram.png"></a>
					<a href="#"><img src="images/twitter.png"></a>
					

				</div>

			</div>

		</footer>
    </body>
</html>
