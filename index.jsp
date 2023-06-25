<%-- 
    Document   : index
    Created on : Jul 26, 2022, 10:44:41 AM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
<!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
<link>
        <title>college voting</title>
       
        <style>
            *{    
           margin:0;
           padding:0;
           }
           .logoh1 h1{
               
               margin-left: 30px;
               margin-top: 30px;
           }
            .header{
                
              width: 100%;
                min-height: 100vh;
                background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('images/voing.jpg'); 
                background-size: cover;
                background-position: center;
                position: relative;
          
            }  
           nav{
               display: flex;
                padding: 2% 6%; 
                align-items: center;
                justify-content:space-between;
                position: sticky;
                top: 0px;
         
            }
            nav img{
                width: 60px;
              
            }
            .navbar{
                flex:1;
                text-align: right;
            }
            .navbar ul li{
                list-style: none;
                display:inline-block;
                margin: 8px 12px;
                position: relative;
                
            }
            .navbar ul li a{
                text-decoration: none;
                color: white;
                text-transform: uppercase;
                font-size: 15px;
                
                
                
            }
            .navbar ul li::after{
                content: '';
                height: 3px;
                width: 0%;
                background:red;
                position: absolute;
                left: 0;
                bottom: -10px;
                transition: 0.5s;
            }
            .navbar ul li:hover::after{
                width: 100%;  
            }
            .text-box{
                width: 90%;
                color: white;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                text-align: center;
                
            }
            .text-box h1{
                font-size: 60px;
            }
            .logoh1{
                margin-left: 1cm;
                display: flex;
            }
            .text-box{
                margin: 10px 0 40px;
                font-size: 14px;
                color: #fff;
            }
            .hero-btn{
                display: inline-block;
                text-decoration: none;
                color: #fff;
                border: 1px solid #fff;
                padding: 12px 30px;
                font-size: 13px;
                background: transparent;
                position: relative;
                cursor: pointer;
              
            }
            .hero-btn:hover{
                border: 1px solid #fff678;
                background: #f44336;
                transition: 1s;
            }
            .fa{
                display: none;
                height: 25px;
                width: 25px;
                
            }
            @media(max-width:700px){
                 .text-box h1{
                font-size: 20px;
               
            }
             .navbar ul li{
               display: block;
               
            }
            .navbar {
                position: absolute;
                background: #f66789;
                height: 100vh;
                width: 200px;
                top: 0;
                right: -200px;
                text-align: left;
                z-index: 2;
                transition:1s;
            }
            .fa{
                display: block;
                color: #fff;
                margin: 10px;
                font-size: 22px;
                cursor: pointer;
            }
            }
/*            election*/
            .election{
             width: 80%;
    margin: auto;
    text-align: center;
    padding-top: 100px;
}
h1{
    font-size: 36px;
    font-weight: 600;
    
}
p1{
    color: black;
    font-size: 14px;
    font-weight: 300;
    line-height: 22px;
    padding: 10px;
}
.row{
    margin-top: 5%;
    display: flex;
    justify-content:space-between;
    
}
.post-col{
    flex-basis:35%;
    background: lightpink;
    border-radius: 10px;
    padding: 20px 20px;
    margin-bottom: 5%;
    box-sizing: border-box;
    transition: 0.5s;
}
h3{
    text-align: center;
    font-weight: 600;
    margin: 10px 0;
    
}
.post-col:hover{
    box-shadow:0 0 40px 0px rgba(0,0,0,0.7);   
}
@media(max-width:700px){
    .row{
        flex-direction:column;
        
    }
}
/*colleges*/
.colleges{
    width: 80%;
    margin:auto;
    text-align: center;
    padding-top: 50px;
}
.colleges-col{
    flex-basis:30%;
    border-radius: 10px;
    margin-bottom: 30px;
    position: relative;
    overflow: hidden;
}
.college-col img{
    width: 50%;  
}
.layer{
    background: rgba(225,0,0,0.7);
    height: 100%;
    width: 100%;
    position: absolute;
    top:0;
    left: 0;
    transition: 0.5s;
}
.layer:hover{
    background: rgba(226,0,0,0.7);
    
}
/* Dropdown Button */
.dropbtn {
  background-color: transparent;
  color: white;
  padding: 10px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color:transparent ;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: black;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 15px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color:black;}

.show {display: block;}
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
        <section class="header">
         <nav>
             <div class="logoh1"> 
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: 2in;font-family: serif;font-style:vollkorn;">College voting</h1>
             </div>
             <div class="navbar" id="navbar">
             <img src="./images/close.jpg"  class="fa" onclick="hidemenu()" alt="">

             <ul>
             <li><a style="color:lightgreen;" href="#">HOME</a></li>
            <li>
    <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">LOGIN</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="collegelogin.jsp">COLLEGE </a>
    <a href="studentlogin.jsp">STUDENT </a>
  </div>
</div>
</li>
           
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="adminlogin.jsp">ADMIN login</a></li>
<!--         <div class="popup" onclick="loginPopUp()"><input style="font-size: 20px; color: white;background-color: transparent;border-radius: 5%; padding :5px 10px;text-decoration: none;margin-left: 0.5in;" type="button" value="login"/>
  <span class="popuptext" id="myPopup">
        <form action="">
              <a href="adminlogin.jsp">Admin</a><br>
            <a href="collegelogin.jsp">college</a>
        </form>
       </span>
</div>-->
           
             </ul>
             
         </div>
              <img class="fa" src="./images/th.jpg" onclick="showmenu()" alt="">
         </nav>
             <div class="text-box">
          <h1>College E-voting</h1><br>
          <p>Always vote for principle,though you may vote alone and you may cherish the sweetest reflection that your vote is never lost</p><br>
          <a href="https://www.ecoi.org.in/" class="hero-btn">visit us to know more</a>
      </div>
       </section>
     
<!--         election-->
<section class="election">
         <h1>UNIVERSITY</h1>
         <p1 style="color: black;font-size: 14px;font-weight: 300; line-height: 22px;padding: 10px;">University, institution of higher education, usually comprising a college of liberal arts and sciences and graduate and professional schools and having the authority to confer degrees in various fields of study.</p1>
         <P1>ELECTIONS FOR UNIVRSITY</P1>
     <div class="row">
     <div class="post-col">
         <h3>BANGALORE CITY UNIVERSITY</h3>
     </div>&nbsp;&nbsp;
         <div class="post-col">
         <h3>BANGALORE UNIVERSITY </h3>
         </div>&nbsp;&nbsp;
         <div class="post-col">
         <h3>REVA UNIVERSITY </h3>  
     </div>&nbsp;&nbsp;
         <div class="post-col">
         <h3>CMR UNIVERSITY </h3>    
     </div>&nbsp;&nbsp;
         <div class="post-col">
         <h3>BANGALORE NORTH UNIVERSITY </h3>     
     </div>
     </div>
</section>
<!--our election system-->
<section class="colleges">
    <h1>colleges</h1>
    <p1> </p1>
    <div class="row">
        <div class="college-col">
            <img src="images/col.jpeg">
            
        </div>
         <div class="college-col">
            <img src="images/sri.jpg">
            
        </div>
         <div class="college-col">
            <img src="images/col1.jpg">
            
        </div>
         <div class="college-col">
            <img src="images/col2.jpg">
            
        </div>
         
            </div>
    </section>
<!--posting for election-->
<section class="election posting">
         <h1>POSTING FOR ELECTIONS</h1>
         <p1 style="color: black;font-size: 14px;font-weight: 300; line-height: 22px;padding: 10px;"></p1>
         <P1>ELECTIONS FOR UNIVRSITY</P1>
     <div class="row">
     <div class="post-col">
         <h3>PRESIDENT</h3>
         <p1>Students performing in this role typically serve a ceremonial and managerial purpose, as a spokesperson of the entire student body. The president may oversee his or her association's efforts on student activity events and planning, school policy support from students, budget allocation, fiscal planning, recognition of developing issues pertaining to students, and communication between faculty/staff and the student body.</p1>
     </div>&nbsp;&nbsp;
         <div class="post-col">
         <h3>VICE-PRESIDENT</h3>
         <p1>The Vice President of Student Affairs is responsible for program development, financial management, and personnel administration for all student affairs functions. This executive also serves as primary advocate and spokesperson for student affairs and promotes the College’s value and worth to the community while building positive relationships with community leaders and organizations.</p1>
         </div>&nbsp;&nbsp;
         <div class="post-col">
         <h3>CULTURAL SECRETARY</h3> 
         <p1>A Cultural Secretary is a part of the executive body of the Student Senate.

Generally, he/she looks after organizing various events in the cultural domain for the general student body thereby providing a platform for students to showcase their talent and also ensuring student engagement apart from their academic routine. He/she coordinates the activities of various student run clubs such as music club, dance club, etc which fall under the cultural council.</p1>
     </div>&nbsp;&nbsp;
         <div class="post-col">
         <h3>CULTURAL CO-ORDINATOR</h3> 
         <p1>Roles and Responsibilities of the Cultural Coordinator Organize cultural competition. Encourage student’s participations. Inculcate cultural and religious values in students.</p1>
     </div>&nbsp;&nbsp;
         <div class="post-col">
         <h3>SPORTS SECRETARY</h3> 
         <p1>Role and Responsibilities Coordination with the Student Sports Secretary Keeping stock of previous and current years’ sports goods. Ordering sports goods in consultation with the Office Superintendent.</p1>
     </div>&nbsp;&nbsp;
      <div class="post-col">
         <h3>SPORTS CO-ORDINATOR</h3> 
         <p1>A successful Sports Coordinator works with a team of people to ensure the physical and emotional well-being of students. The role and responsibility ensure that every student gets the opportunity to participate in school sporting events. Apart from this, a Sports Coordinator must ensure the appropriate behavior of students during sporting events.</p1>
     </div>&nbsp;&nbsp;
     </div>
</section>
<script>
    //DROPDOWN
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

//javascript for toggle menu
var navlink = document.getElementById("navbar")
 function showmenu(){
    navlink.style.right="0";
 }
 function hidemenu()
 {
    navlink.style.right="-200px";
 }

</script>
 <footer class="footer-distributed">

			<div class="footer-left">
<nav>

				 <img style=" width: 60px;cursor: pointer;" src="images/raise-hand.png"><h3 style="margin-right:0.5in;">COLLEGE VOTING</h3>
</nav>
				<p class="footer-links">
					<a href="index.jsp" class="link-1">Home</a>
					
					<a href="viewcollege1">COLLEGE LISTS</a>
				
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
					Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
				</p>

				<div class="footer-icons">

					<a href="#"><img src="images/facebook.png"></a>
					<a href="#"><img src="images/instagram.png"></a>
					<a href="#"><img src="images/twitter.png"></a>
					

				</div>

			</div>

		</footer>
    </body>
</html>
