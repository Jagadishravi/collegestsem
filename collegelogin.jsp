<%-- 
    Document   : collegelogin
    Created on : Aug 5, 2022, 5:16:03 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>college login</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                 width: 100%;
                min-height: 100vh;
               background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.35)),url('images/college4.jpg'); 
                background-size:cover;
                background-position: center;
                position: relative;
            
          
            }
            .form{
                display: flex;
                flex-direction:column;
                height:500px;
                width: 400px;
                border: 1px solid black;
                align-items:center;
                margin: auto;
                margin-top:15px;
                background-color: rgba(0,0,0,0.5);
                box-shadow: inset -5px -5px rgba(0,0,0,0.5);
                border-radius: 25px;
                
                
                
            }
            .form h1{
                text-align: center;
                color: white;
                font-size: 2rem;
                border-bottom: 4px solid rgba(255,255,255,0.5);
                margin: 50px;
                
            }
            .box{
                padding: 12px;
                margin: 20px;
                width: 65%;
                border: none;
                outline: none;
                border-radius: 20px;
                background-color: white;
                box-shadow: inset -3px-3px rgba(0,0,0,0.5);
                color: black;
                font-size: 1rem;
               
                
            }
            input[type=submit]{
                padding:10px 20px;
                margin-top: 50px;
                width: 35%;
                background-color: rgba(0,0,0,0.5);
                box-shadow: inset -3px-3px rgba(0,0,0,0.5);
                color: white;
                border: none;
                outline: none;
                border-radius: 20px;
                font-size: 1rem;
              
                
            }
            input[type=reset]{
                padding:10px 20px;
                margin-top: 50px;
                width: 35%;
                background-color: rgba(0,0,0,0.5);
                box-shadow: inset -3px-3px rgba(0,0,0,0.5);
                color: white;
                border: none;
                outline: none;
                border-radius: 20px;
                font-size: 1rem;
                
              
                
            }
            input[type=submit]:hover{
                cursor: pointer;
                background-color: rgba(255,255,255,0.1);
                color: white;
                
            }
              input[type=reset]:hover{
                cursor: pointer;
                background-color: rgba(255,255,255,0.1);
                color: white;
                
            }
             nav{
               display: flex;
                padding: 2% 6%; 
                align-items: center;
                justify-content:space-between;
         
            }
             .navbar{
                flex:1;
                text-align: right;
               
            }
            </style>
    </head>
    <body>
<!--        <section class="header">
         <nav>
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: 2.5in;font-family: serif;font-style:vollkorn;">college voting</h1>
         <div class="navbar">
             <ul>
             <li><a href="index.jsp">HOME</a></li>
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="#">LOGOUT</a></li>           
             </ul>
             
         </div>
             
         </nav>
          </section>-->
        <section class="header">
            <div class="navbar">
            <nav>
                <img style="width: 50px;height: 50px;" src="images/raise-hand.png"><h1 style="font-size:30px; color: white; margin-right: 8in;font-family: serif;font-style:vollkorn;">college voting</h1>
         
             <ul>
            
             <li><a style="border:1px solid; border-color: white;color: white; padding: 10px 10px; text-decoration: none;" href="index.jsp">BACK</a></li>           
             </ul>
         </nav>    
         </div>
             
         
            <form action="collegelogincheck.jsp" method="post" class="form">
                <h1>College Login</h1>
                <input type="college ID" name="collegeid" class="box" placeholder="Enter collegeID">
                <input type="password" name="Password" id="eye" onclick="toggle()" class="box" placeholder="Enter password">
               
                <input type="submit" value="Login"><input type= "reset" value="Reset">
                
            </form>
            </section>
   
     <script>
           var state=false;
            function toggle(){
                if(state){
                    document.getElementById("password").setAttribute("type","password");
                    document.getElementById("eye").style.color='black';
                    state=false;
                }
                else
                    {
                        document.getElementById("password").setAttribute("type","text");
                        document.getElementById("eye").style.color='black';
                        state=true;
                    }
            }
             </script>
              <%@ include file="footer.jsp" %>
              </body>
</html>
