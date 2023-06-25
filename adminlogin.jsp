<%-- 
    Document   : adminlogin
    Created on : Jul 26, 2022, 11:27:48 AM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>Admin login</title>
        
        <style>
           
            *{
                margin: 0;
                padding: 0;
            }
            .header{
                 width: 100%;
                min-height: 100vh;
                background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('images/voing.jpg'); 
                background-size: cover;
                background-position: center;
                position: relative;
          
            }
            .form{
                display: flex;
                flex-direction:column;
                height:450px;
                width: 400px;
                border: 1px solid black;
                align-items:center;
                margin: auto;
                margin-top: 40px;
                background-color: rgba(0,0,0,0.5);
                box-shadow: inset -5px -5px rgba(0,0,0,0.5);
                border-radius: 25px; 
                
            }
            .form h1{
                text-align: center;
                color: white;
                font-size: 2rem;
                border-bottom: 4px solid rgba(255,255,255,0.5);
                margin: 30px;
                
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
                width: 50%;
                background-color:rgba(0,0,0,0.5);
                box-shadow: inset -3px -3px rgba(0,0,0,0.5);
                color: white;
                border: none;
                outline: none;
                border-radius: 20px;
                font-size: 1rem;  
                border-bottom: none;
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
        </style>
<script type="text/javascript"> 
 
    function validation()
    {
       var x= document.getElementById('username').value;
       var y= document.getElementById('password').value;
 
          if (x == 'admin' &&  y=='admin')
        {
            alert("LOGIN SUCCESSFULL. CLICK OK TO CONTINUE...!");
            return true;
        }
         else
 
        { alert("SORRY...!ENTER THE VALID USERNAME AND PASSWORD");
            return false;
        }
 
    }
</script>

    </head>
    <body>
        <section class="header">
             <div class="navbar">
            <nav>
                 <div class="logoh1"> 
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: 2in;font-family: serif;font-style:vollkorn;">College voting</h1>
             </div>
             <ul>
            
             <li><a style="border:1px solid; border-color: white;color: white; padding: 10px 10px; text-decoration: none;" href="index.jsp">BACK</a></li>           
             </ul>
         </nav>    
         </div>
        <form action="adminpage.jsp"  class="form">
        <h1>ADMIN LOGIN<h1>
        <input type="text" Id="username" class="box" name="username" placeholder="username">
        <input type="password" class="box" name="password" id="eye" onclick="toggle()" placeholder="password">
        <input type="submit" value="LOGIN" onclick="return validation();">
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
                        document.getElementById("password").setAttribute("type","password");
                        document.getElementById("eye").style.color='black';
                        state=true;
                    }
            }
             </script>
           <%@ include file="footer.jsp" %>
             </body>
</html>
