<%-- 
    Document   : login
    Created on : Jul 13, 2022, 8:48:41 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<!--        <link href="./style/common.css" rel="stylesheet"/>-->
<style>
      .outerdiv{
                padding-left:4.8in;
                padding-top:0.5in;
                 
             }
              .innerdiv{
                padding-left:5px;
                padding-top:55px;
                padding-bottom:40px;
                border:2px transparent;
                width:48%;
                height:10cm;
                background-color:#cc99ff;
                font-size:20px;
                text-align:center;
                border-radius:5%;
               background-image:url('images/l.jpg');
              background-repeat:no-repeat;
               background-size:cover;
               background-size:20%;
         background-position-x: 4.2cm;
         background-position-y: 0cm;
         
         
               
                
                
                
            }
            body{
               background-image:url('images/pink.jpg');
               background-repeat:no-repeat;
               background-size:cover;
               
              
            }
            input[type=text],input[type=password]{
                width:150px;
                height:30px;
               
            }
            
               label{
              width:120px;
              display:inline-block;
              font-size: 20px
          }
            input[type=submit]{
                  background-color: blue;
                width:200px;
                height:40px;
                font-size: 30px;
               
              color: white;
                
                
                
            }
            input[type=submit]:hover{
                width:220px;
                height:40px;
                background-color:#ffcc99;
                color:white;
                
            }
            label{
                font-size: 20px;
/*                 background-image:url('images/u.jpg');
              background-repeat:no-repeat;
               background-size:cover;
               background-size:40%;*/
/*                background-image:url('images/key.jpg');
              background-repeat:no-repeat;
               background-size:cover;
               background-size:%;*/
                
            }
      
</style>
       <script>
            function clearFieldValues(){
                document.getElementById("username").value="";
                document.getElementById("password").value="";
                
            }
        </script>
    </head>
    <body onload="clearFieldValues();">
         
         <div class="outerdiv">
            <div class="innerdiv">
                <form method="post" action="logincheck.jsp">
                   
                   <h1> USER LOGIN<h1>
        <img src="./images/stu.jpg" style="width: 20px; height: 20px;"><label>STUDENTID </label> <input type="text" styleId="studentid" name="username" placeholder="student id"><br><br>
        <img src="./images/u.jpg" style="width: 25px; height: 20px;"><label>USERNAME</label> <input type="text" styleId="username" name="username" placeholder="username"><br><br>
        <img src="./images/key.jpg" style="width: 25px; height: 20px;"><label>PASSWORD</label> <input type="password" styleId="password" name="password" placeholder="password"><br><br>
        <b><input type="submit" value="LOGIN" ></b><br>
       <h2><a href="userregister.jsp" >create a new account</a></h2>
        </form>
        </div>
            </div>
    </body>
</html>
