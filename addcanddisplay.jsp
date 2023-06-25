<%-- 
    Document   : addcanddisplay
    Created on : Aug 11, 2022, 11:13:12 AM
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
                 margin: 0;
                 padding: 0;
                 box-sizing: border-box;
             }
/*             .header{
                 width: 100%;
                min-height: 100vh;
                background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('images/voing.jpg'); 
                background-size: cover;
                background-position: center;
                position: relative;
          
             }*/
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
           
/*css fr section 2*/
             .outerdiv{
                width: 100%;
                height: 200vh;
                background-color:white;
                float: left;
                
             }
             .innerdiv{

                 height: 20cm;
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
             <div class="logoh1"> 
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: 2in;font-family: serif;font-style:vollkorn;">College voting</h1>
             </div>
                   <div class="navbar">
             <ul>
             <li><a href="index.jsp">HOME</a></li>
             <li><a href="viewcandidate.jsp">VIEW CANDIDATE</a></li>
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="addcandidate.jsp">BACK</a></li> 
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="collegelogin.jsp">LOGOUT</a></li>           
             </ul>
             </nav>
            </section>
        <section class="second">
         <%
        String sid = request.getParameter("sid");
        rst=stmt.executeQuery("select * from user where studentid='"+ sid +"'");
        out.println(sid);
        if(rst.next()){
                   %>
         <div class="outerdiv">
         <div class="innerdiv">
            
             <form method="post" action="addcandsave.jsp">
      
                 <h1>NOMINEE<h1>
        <p><input type="text" placeholder="student id" name="studentid" class="intpt" value="<%=rst.getString("studentid")%>"></p>
        <p><input type="text" placeholder="name" name="name" class="intpt" value="<%=rst.getString("name")%>"></p>
        
       
        <p><input type="text" placeholder="Department" name="department" class="intpt" value="<%=rst.getString("department")%>"></p>
        <p><input type="text" placeholder="Sem" name="sem" class="intpt" value="<%=rst.getString("sem")%>"></p>
       <p><input type="text" placeholder="gender" name="gender" class="intpt" value="<%=rst.getString("gender")%>"></p>
      
          <p><input type="text" placeholder="college ID" name="cid"  class="intpt" value="<%=rst.getString("collegeid")%>" ></p>
          <p><select name="nominee" class="intpt">
              <option>PRESIDENT</option>
              <option>VICE-PRESIDENT</option>
               <option>SPORTS SECRETARY</option>
                <option>SPORTS CO-ORDINATOR</option>
                 <option>CULTURAL SECRETARY</option>
                  <option>CULTURAL CO-ORDINATOR</option>
          </select></p>
       <div class="bot">
        <p><input type= "submit" name="sub" value="ADD NOMINEE" class="btn f1"></p>
         <p><input type= "reset" name="res" value="Reset" class="btn fr"></p>
        </div>
        </form>
        </div>
        
             </div>
        <% } %>
        </section>
            <%@ include file="footer.jsp" %>
    </body>
</html>
