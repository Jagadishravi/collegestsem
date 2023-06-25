<%-- 
    Document   : viewstudent
    Created on : Aug 7, 2022, 7:01:18 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View student</title>
         <style>
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
            .intpt{
/*                 display: block;*/
                 width: 50%;
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
/*             .f1{float:left;}
             .fr{float: right;}*/
             .btn{
                 width: 25%;
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
        <section>
              <nav>
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: 2.5in;font-family: serif;font-style:vollkorn;">college voting</h1>
         <div class="navbar">
             <ul>
             <li><a href="index.jsp">HOME</a></li>
             <li><a href="studentregister.jsp">ADD STUDENT</a></li>
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="collegepage.jsp">BACK</a></li>  
               <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="collegelogin.jsp">LOGOUT</a></li>  
             </ul>
         </div>
             
              </nav>
                  
            </section>
        <section>
        <%
         String cid = (String)session.getAttribute("cid");
        %>
      <center><form method="post" action="studeletecheck.jsp">
             <input type="text" name="studentid" placeholder="ENTER STUDENT ID TO DELETE" class="intpt"><br>
  <div class="bot">
    <input type="submit" value ="delete" class="btn f1">
    <input type= "reset" name="res" value="Reset" class="btn fr">
  </div>
        </form>
         <form method="post" action="seditprocess.jsp">
            <input type="text" name="studentid" placeholder="ENTER RECORD TO BE UPDATED" class="intpt"><br>
  <div class="bot">
    <input type="submit" value ="EDIT" class="btn f1">
    <input type= "reset" name="res" value="Reset" class="btn fr">
  </div>
         </form></center>
       <table border="1" style="font-size: 20px; color: black; background-color:lightblue;">
            <tr><th>Student ID</th><th>Name</th><th>UserName</th><th>Phoneno</th><th>password</th><th>DOB</th><th>Age</th><th>Email</th><th>Department</th><th>Sem</th><th>Father Name</th><th>Mother Name</th><th>Gender</th><th>Address</th>
            </tr>       <%
       rst=stmt.executeQuery("select * from user where collegeid='"+cid+"'");
       while(rst.next()){
           out.println("<tr><td>"+rst.getString("studentid")+"</td><td>"+rst.getString("name")+"</td><td>"+rst.getString("username")+"</td><td>"+rst.getString("phoneno")+"</td><td>"+rst.getString("password")+"</td><td>"+rst.getString("dob")+"</td><td>"+rst.getString("age")+"</td><td>"+rst.getString("email")+"</td><td>"+rst.getString("department")+"</td><td>"+rst.getString("sem")+"</td><td>"+rst.getString("father")+"</td><td>"+rst.getString("mother")+
"</td><td>"+rst.getString("gender")+"</td><td>"+rst.getString("address")+"</td></tr>");
         }
%>
        </table>
      </section>
         <%@ include file="footer.jsp" %>
    </body>
</html>
