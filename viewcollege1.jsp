<%-- 
    Document   : viewcollege1
    Created on : Aug 22, 2022, 9:15:50 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>
<html>
    <head>
         <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>college lists</title>
        <style>
            *{
                 margin: 0;
                 padding: 0;
                
             }
         
                
           
              
          
              
          
           nav{
                 background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('images/student.jpg'); 
                background-size: cover;
                background-position: center;
                position: relative;
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
            /*css for table*/
        
            </style>
    </head>
    <body>
        <section class="header">
            <nav>
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: 2.5in;font-family: serif;font-style:vollkorn;">college voting</h1>
         <div class="navbar">
             <ul>
             <li><a href="index.jsp">HOME</a></li>
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="index.jsp">BACK</a></li>           
             </ul>
         </div>
             
              </nav>
                  
            </section>
     
           <section>
                   <table border="1" style="font-size: 30px; color: black; background-color:pink;">
            <tr><th>College ID</th><th>College Name</th><th>University</th><th>College Address</th><th>District</th><th>State</th><th>Pincode</th><th>Password</th></tr>       <%
       rst=stmt.executeQuery("select * from college");
       while(rst.next()){
           out.println("<tr><td>"+rst.getString("collegeid")+"</td><td>"+rst.getString("cname")+"</td><td>"+rst.getString("university")+"</td><td>"+rst.getString("caddress")+
"</td><td>"+rst.getString("district")+"</td><td>"+rst.getString("state")+"</td><td>"+rst.getString("pincode")+"</td><td>"+rst.getString("password")+"</td></tr>");
         }
%>
        </table>
            
        </section>
         <%@ include file="footer.jsp" %>
    </body>
</html>

