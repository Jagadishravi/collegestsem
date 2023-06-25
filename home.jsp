<%-- 
    Document   : home
    Created on : Jul 26, 2022, 11:25:42 AM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>online voting</title>
       
        <script>
//            document.getElementById('button').addEventListener('click',
//            function() {
//                document.querySelector('.bg-modal').style.display='flex';
//            });
//            var e = document.getElementById('button');
//            if (e) {
//                e.addEventListener('click', function() {
//                document.querySelector('.bg-modal').style.display='flex';});
//            }
function registerPopUp() {
    var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");

}
function loginPopUp() {
    var popup = document.getElementById("myPopup1");
  popup.classList.toggle("show");

}
function closePopUp() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("hide");
}
        </script>
        <style>
            .menubar{
           
         height:100px;
            padding-top:20px;
            padding-left:0.5in;
            background-color: #000099;
           
        }
        .menubar a{
            font-size: 15px;
/*            font-style:;*/
            color: white;
            padding:10px 20px;
/*            border:1px solid crimson;*/
           text-decoration:underline;
         
        }
        .menubar a:hover{
            width:220px;
                height:40px;
                background-color:blue;
                color:white;
                 border-radius:5%;
        }
/*        .menubarouter{
         
        
            padding-top:20px;
            padding-left:0.5in;
            background-color: #000099;
           
        }*/
      
        .menubaroutside{
            background-color: white;
            
        }
/*       body{
            padding:0;
            margin: 0;
            height: 100vh;
            justify-self:center;
            align-items:center;
            background:cyan;
        
       }
        .section{
            margin:0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content:center;
            align-items:center;
            
               
        }
       .slider{
            width: 800px;
            height: 500px;
            display: 500px;
            
        }
        .slide input{
            display:none;
            
        }
        .st{
            width: 20%;
            transition: 2s;
            
        }
        .st img{
            width: 800px;
            height: 500px;
            
        }
        .nav-m{
            position: absolute;
            width: 800px;
            margin-top: -40px;
            justify-center:center;
            display:flex;
            
        }
        .m-btn{
            border: 2px solid captiontext;
            padding: 5px;
            border-radius: 10px;
            cursor: pointer;
            transition: 1s;
            
        }
        .m-btn:not(:last-child){
            margin-right: 30px;
            
        }
        .m-btn:hover{
            background-color: #00ccff;
            
        }
        #radio1:checked~.first{
            margin-left: 0;
        }
         #radio2:checked~.first{
            margin-left: -20%;
        }
         #radio3:checked~.first{
            margin-left: -40%;
        }
         #radio4:checked~.first{
            margin-left: -60%;
        }
        .nav-auto{
            position: absolute;
            width: 800px;
            margin-top: 460px;
            display: flex;
            justify-content:center;
        }
        .nav-auto div:not(:last-child){
            margin-right: 30px;
            justify-content:center;
        }
      #radio1:checked~.nav-auto.a-b1{
            background-color: #00cccc;
        }
         #radio2:checked~.nav-auto.a-b2{
            background-color: #00cccc;
        }
         #radio3:checked~.nav-auto.a-b3{
            background-color: #00cccc;
        }
         #radio4:checked~.nav-auto.a-b4{
            background-color: #00cccc;
        }
        
/*        .maindiv{
            width:70%;
            height:400px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform:translate(-50%,-50%);
            background-image: url(https://scoutconference.org/conference-elects-12-voting-members-to-the-world-scout-committee/);
            background-size: 100% 100%;
            box-shadow: 1px 2px 10px 5px white;
            animation: slider 9s infinite linear;
         
        }
        @keyframes slider{
            0%{ }
        35%{ }
        75%{ }
        }*/

/*.bg-modal{
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,0.7);
    
    position:absolute;
    top: 0;
    display: flex;
    justify-content:center;
    align-items:center;
    display: none;
    
   
   
    
}
.modal-content{
    width: 500px;
    height: 300px;
    background-color: white;
    opacity: 1;
    border-radius: 4%;
    text-align: center;
    padding:20px;
    position: relative
    
    
}
.close{
    position: absolute;
    top: 0;
    right: 14px;
    font-size: 40px;
    transform: rotate(45deg);
    cursor: pointer;
}*/

/* Popup container */
.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
}

/* The actual popup (appears on top) */
.popup .popuptext {
  visibility: hidden;
  width: 350px;
  background-color:#ccccff;
  color: #fff;
  text-align: center;
  border-radius: 4%;
  border-color:black;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  top: 110%;
  left: 50%;
  margin-left: -160px;
  height: 250px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
/*  top: 100%;*/
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class when clicking on the popup container (hide and show the popup) */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;}
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}

        </style>
    </head>
    <body>
       
<!--    <div class="menubarouter">-->
        <div class="menubar">
            <c style="font-size:50px; margin-left: 20px; color:#3333ff;">E-</c><c style="font-size:40px; color:#ff00ff;">Voting</c>
<!--             <a  style="margin-left:1in;" href="#">HOME</a>-->
          
            <a style="margin-left: 1.5in"href=".jsp">REPORT</a>
            <a href="about.jsp">ABOUT US</a>
            <a href=".jsp">NEWS</a>
            <a href="contactus.jsp">CONTACT</a>
<!--            <a style="font-size: 40px; color: white;background-color: orange;border-radius: 5%; padding :10px 20px;text-decoration: none;margin-left: 0.5in;" href="#" id="button" class="button" onclick="loginPopUp()">REGISTER</a>-->
<div class="popup" onclick="registerPopUp()" onmouseover="closePopUp()"><input style="font-size: 40px; color: white;background-color: orange;border-radius: 5%; padding :10px 20px;text-decoration: none;margin-left: 0.5in;" type="button" value="Register"/>
  <span class="popuptext" id="myPopup">
<!--      <div class="bg-modal">
    <div class="modal-content">
        <div class="close">+</div>-->
        <form action="">
              <a href="adminregister.jsp">Admin</a><br>
            <a href="userregister.jsp">User</a>
        </form>
<!--        </div>
    </div>-->
  </span>
</div>
<!--<a style="font-size: 40px; color: white;background-color: orange;border-radius: 5%; padding :10px 40px;text-decoration: none;margin-left: 0.5in;" href="login.jsp" >Login</a>  -->
      <div class="popup" onclick="loginPopUp()"><input style="font-size: 40px; color: white;background-color: orange;border-radius: 5%; padding :10px 20px;text-decoration: none;margin-left: 0.5in;" type="button" value="LOGIN"/>
  <span class="popuptext" id="myPopup1">
<!--      <div class="bg-modal">
    <div class="modal-content">
        <div class="close">+</div>-->
        <form action="">
              <a href="adminlogin.jsp">Admin</a><br>
            <a href="login.jsp">User</a>
        </form>
<!--        </div>
    </div>-->
  </span>
</div>    
        </div>
<!--    </div>-->
          
<!--<div class="big-modal">
     <div class="modal-content">
         <img src="">
         <form action="">
             <input type="text" placeholder="name">
             <input type="text" placeholder="email">
             <a href="" class="button"> submit</a>
         </div>
     </div>-->
<!--<div class="bg-modal">
    <div class="modal-content">
        <div class="close">+</div>
        <form action="">
              <a href="adminregister.jsp">Admin</a><br>
            <a href="userregister.jsp">User</a>
        </form>
        </div>
    </div>-->
    </body>
  



</html>
