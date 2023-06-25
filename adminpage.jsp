<%-- 
    Document   : adminpage
    Created on : Aug 1, 2022, 6:37:42 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>ADMIN PAGE</title>
<!--        <link href="./style/common.css" rel="stylesheet"/>-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css">
        <style>
          *{    
           margin:0;
           padding:0;
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
/*           .sub-menu-1{
                display: none;
            }
            .navbar ul li:hover .sub-menu-1{
                display: block;
                position: absolute;
                background: rgb(0,100,0);
                margin-top: 15px;
                margin-left: -15px;
                
            }
            .navbar ul li:hover .sub-menu-1 ul
            {
                display: block;
                margin: 10px;
                
            }*/
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
           
        </style>
    </head>
    <body>
      <section class="header">
         <nav>
              <div class="logoh1"> 
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: 2in;font-family: serif;font-style:vollkorn;">College voting</h1>
             </div>
             <div class="navbar">
             <ul>
             <li><a style="color:lightgreen;" href="index.jsp">HOME</a></li>
             <li><a href="collegeregister.jsp">ADD COLLEGE</a></li>
             <li><a href="viewcollege.jsp"> view COLLEGE</a></li>
            <li><a href="https://primaryedu.karnataka.gov.in/english">ABOUT</a></li>
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="index.jsp">LOGOUT</a></li>           
             </ul>
             
         </div>
               <div class="text-box">
          <h1>ADMIN</h1><br>
          <p>Always vote for principle,though you may vote alone and you may cherish the sweetest reflection that your vote is never lost</p><br>
           </div>
             
         </nav>
          </section>
    </body>
</html>
