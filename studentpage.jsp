<%-- 
    Document   : studentpage
    Created on : Aug 16, 2022, 11:53:04 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
          *{    
           margin:0;
           padding:0;
           }
           
            .header{
                
              width: 100%;
                min-height: 100vh;
                background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('images/student.jpg'); 
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
            
        </style>
    </head>
    <body>
 
        <section class="header">
         <nav>
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: 1in;font-family: serif;font-style:vollkorn;">college voting</h1>
         <div class="navbar">
             <ul>
             <li><a style="color:lightgreen;" href="index.jsp">HOME</a></li>
             <li><a href="profile.jsp">PROFILE</a></li>
             <li><a href="selectnominee.jsp"> CAST VOTE </a></li>
               <li><a href="viewcandidate1.jsp">VIEW CANDIDATE</a></li>
             <li><a href="viewelectiondates1.jsp">ELECTION DATES</a></li>
              <li><a href="winnerresult.jsp">RESULTS</a></li>
             
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="studentlogin.jsp">LOGOUT</a></li>           
             </ul>
             
         </div>
             <div class="text-box">
          <h1>STUDENT</h1><br>
          <p>Always vote for principle,though you may vote alone and you may cherish the sweetest reflection that your vote is never lost</p><br>
          <a href="https://skdc.edu.in/" class="hero-btn">visit us to know more</a>
      </div>
       </section>
         </nav>
          </section>
           <%@ include file="footer.jsp" %>
    </body>
</html>
