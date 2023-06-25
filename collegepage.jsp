<%-- 
    Document   : collegepage
    Created on : Aug 5, 2022, 6:52:22 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <style>
            *{    
           margin:0;
           padding:0;
           }
           
            .header{
                
              width: 100%;
                min-height: 100vh;
                background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('images/uni.jpg'); 
                background-size: cover;
                background-position: center;
                position: relative;
          
            }  
           nav{
               display: flex;
                padding: 2% 6%; 
                align-items: center;
                justify-content:space-between;
         
            }
            nav img{
                width: 60px;
                cursor:pointer;
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
                background:greenyellow;
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
            h1{
    font-size: 36px;
    font-weight: 600;
    
}
            .text-box h1{
                font-size: 60px;
               
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
            nav.fa{
                display: hidden;
            }
            @media(max-width:700px){
                 .text-box h1{
                font-size: 20px;
               
            }
             .navbar ul li{
               display: block;
               
            }
            .navbar{
                position: absolute;
                background: #f66789;
                height: 100vh;
                width: 200px;
                top: 0;
                right: 0;
                text-align: left;
                z-index: 2;
            }
            nav.fa{
                display: block;
                color: #fff;
                margin: 10px;
                font-size: 22px;
                cursor: pointer;
            }
            }
            
    * {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}


.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
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

.show {
    display: block;
}
/*second dropdown*/
.dropbtn1 {
  background-color: transparent;
  color: white;
  padding: 10px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn1:hover, .dropbtn:focus {
  background-color:transparent ;
}

.dropdown1 {
  position: relative;
  display: inline-block;
}

.dropdown-content1 {
  display: none;
  position: absolute;
  background-color: black;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content1 a {
  color: black;
  padding: 12px 15px;
  text-decoration: none;
  display: block;
}

.dropdown1 a:hover {background-color:black;}

.show {
    display: block;
}
/*second dropdown*/
.dropbtn2 {
  background-color: transparent;
  color: white;
  padding: 10px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn2:hover, .dropbtn:focus {
  background-color:transparent ;
}

.dropdown2 {
  position: relative;
  display: inline-block;
}

.dropdown-content2 {
  display: none;
  position: absolute;
  background-color: black;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content2 a {
  color: black;
  padding: 12px 15px;
  text-decoration: none;
  display: block;
}

.dropdown2 a:hover {background-color:black;}

.show {
    display: block;
}
        </style>
    </head>
    <body>
      <section class="header">
         <nav>
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: in;font-family: serif;font-style:vollkorn;">college voting</h1>
         <div class="navbar">
             <ul>
             <li><a style="color:lightgreen;" href="index.jsp">HOME</a></li>
<!--             <li><a href="studentregister.jsp">STUDENT</a></li>-->
<!--             <li><a href="viewstudent.jsp">VIEW STUDENT</a></li>-->
<li>
    <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">STUDENT</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="studentregister.jsp">ADD STUDENT</a>
    <a href="viewstudent.jsp">VIEW STUDENT </a>
  </div>
</div>
</li>
<li>
    <div class="dropdown">
  <button onclick="myFunction1()" class="dropbtn1">CANDIDATE</button>
  <div id="myDropdown1" class="dropdown-content1">
    <a href="addcandidate.jsp">ADD CANDIDATE</a>
    <a  style="text-align:center;"href="viewcandidate.jsp">VIEW CANDIDATE</a>
  </div>
</div>
</li>
        <li>
    <div class="dropdown">
  <button onclick="myFunction2()" class="dropbtn2">DATES</button>
  <div id="myDropdown2" class="dropdown-content2">
   <a href="electiondate.jsp">ELECTION DATE</a>
   <a href="viewelectiondates.jsp">view ELECTION</a>
  </div>
</div>
</li>     
            <li><a href="viewresults.jsp">ELECTION COUNTS</a></li>
             <li><a href="updateresults.jsp">UPDATE RESULTS</a></li>
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="collegelogin.jsp">LOGOUT</a></li>           
             </ul>
             
         </div>
             
        
           <div class="text-box">
          <h1>College</h1><br>
          <p>Always vote for principle,though you may vote alone and you may cherish the sweetest reflection that your vote is never lost</p><br>
           </div>
          </section>
       <section><br><br>
          <h2 style="text-align:center;">COLLEGE ELECTIONS</h2><br><br>
 </nav>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/clg.jpg" style="width:100%">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/college2.jpg" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/college3.jpeg" style="width:100%">
  <div class="text">Caption Three</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
 </section>
<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
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
//2nd dropdown
function myFunction1() {
  document.getElementById("myDropdown1").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn1')) {
    var dropdowns = document.getElementsByClassName("dropdown-content1");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
//3rd dropdown
function myFunction2() {
  document.getElementById("myDropdown2").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn2')) {
    var dropdowns = document.getElementsByClassName("dropdown-content2");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
       <%@ include file="footer.jsp" %>    
    </body>
</html>
