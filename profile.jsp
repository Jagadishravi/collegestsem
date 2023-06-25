<%-- 
    Document   : userregister
    Created on : Jul 28, 2022, 10:20:28 AM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="test.jsp" %>
<!DOCTYPE html>
<html>
    <head>
          <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <style>
 *{
                 margin: 0;
                 padding: 0;
                 box-sizing: border-box;
             }
/*              css for section 1*/
              nav{
               display: flex;
                padding: 2% 6%; 
                align-items: center;
                justify-content:space-between;
                background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('images/student1.jpg'); 
                background-size: cover;
                background-position: center;
                position: relative;
         
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
/*             .header{
                 width: 100%;
                min-height: 100vh;
                background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('images/voing.jpg'); 
                background-size: cover;
                background-position: center;
                position: relative;
          
             }*/
/*css fr section 2*/
             .outerdiv{
                width: 100%;
                height: 200vh;
                background-color:white;
                float: left;
                
             }
             .innerdiv{

                 height: 16cm;
                 width: 40%;
                 background-color: transparent;
                 overflow: hidden;
                 border-radius: 15px;
                 margin-top: 20px;
                 margin-left: 30%;
                box-shadow: 9px  9px 16px rgba(163,177,198,0.6),-9px -9px 16px rgba(225,225,225,0.5);
             }
             h1{
                 color:black;
                 text-align: center;
                 margin: 30px 0;
                 letter-spacing: 1px;
                 font-size: 35px;
             }
             .intpt{
                 display: block;
                 width: 65%;
                 padding: 10px 10px;
                 margin: 20px auto;
                 background-color: #e0e5ec;
                 border: 1px solid #ffffff80;
                 box-shadow: 9px 9px 19px #a3b1c699,-9px -9px 16px #ffffff80;
                 color: black;
                 font-size: 16px;
                 font-weight: bold;
                 border-radius: 5px;
                 outline: none;
                 
             }
             
             .intpt:hover{
                 box-shadow: inset -10px -10px 30px 0 #ffffffb3,
                     inset 10px 10px 30px 0 #00000033;
             }
             .intpt::placeholder{
                 font-size: 16px;
                 font-weight:bold;
                 color:#4a8383;
             }
             .intpt:focus::-webkit-input-placeholder{
                 color:c;
                 font-size: 16px;
                 font-weight: bold;
                 -webkit-transform:translateY(-10px);
                 transform:translateY(-1px);
             }
             .bot{
                 width: 65%;
                 margin: auto;
                 
             }
             .f1{float:left;}
             .fr{float: right;}
             .btn{
                 width: 45%;
                 padding: 15px 10px;
                 background-color: rgb(214,214,214);
                 border: none;
                 border-radius: 25px;
                 color: black;
                 font-size: 15px;
                 font-weight: bold;
                 text-transform: uppercase;
                 letter-spacing: 2px;
                 box-shadow: -7px -7px 20px 0 #ffffffb3,
                     7px 7px 20px #00000033;
                 
             }
             .btn:hover{
                 box-shadow: inset -7px -7px 20px 0 #005566,
                     inset 7px 7px 20px 0 #056777;
             }
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
             
           
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="studentpage.jsp">BACK</a></li> 
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="studentlogin.jsp">LOGOUT</a></li>           
             </ul>
             </nav>
            </section>
        <%
        String sid = (String)session.getAttribute("sid");
        rst = stmt.executeQuery("select * from user where studentid='"+sid+"'");
        if(rst.next())
                       {
        %>
        <section class="header">
        <div class="outerdiv">
         <div class="innerdiv">
            
             <form method="post" action="stuupdatecheck.jsp">
                 <h1>PROFILE<h1>
        <p><input type="text" placeholder="student id" name="studentid" class="intpt" value="<%=rst.getString("studentid")%>"></p>
        <p><input type="text" placeholder="name" name="name" class="intpt" value="<%=rst.getString("name")%>"></p>
        <p><input type="text" placeholder="username" name="username" class="intpt" value="<%=rst.getString("username")%>"></p>
        <p><input type="text" placeholder="phoneno" name="phoneno" class="intpt" value="<%=rst.getString("phoneno")%>"></p>
        <p><input type="text" placeholder="password" name="password" class="intpt" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" value="<%=rst.getString("password")%>"></p>
       
        <p><input type="text" placeholder="Email" name="email" class="intpt" value="<%=rst.getString("email")%>"></p>
          <p><input type="text" placeholder="college ID" name="cid" readonly value="<%=rst.getString("collegeid")%>" class="intpt"></p>
       <div class="bot">
        <p><input type= "submit" name="sub" value="Register" class="btn f1"></p>
         <p><input type= "reset" name="res" value="Reset" class="btn fr"></p>
        </div>
        </form>
          <%
                   }
          %>
        </div>
            </div>
            </section>
         <%@ include file="footer.jsp" %>
    </body>
</html>
