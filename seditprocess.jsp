<%-- 
    Document   : seditprocess
    Created on : Aug 7, 2022, 7:21:22 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>
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
/*             .header{
                 width: 100%;
                min-height: 100vh;
                background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url('images/voing.jpg'); 
                background-size: cover;
                background-position: center;
                position: relative;
          
             }*/
             .outerdiv{
                width: 100%;
                height: 200vh;
                background-color:transparent;
                float: left;
                
             }
             .innerdiv{

                 height: 27cm;
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
        <%
        String studentid = request.getParameter("studentid");
        rst=stmt.executeQuery("select * from user where studentid='"+ studentid +"'");
        out.println(studentid);
        if(rst.next()){
                   %>
                   <section class="header">
        <div class="outerdiv">
         <div class="innerdiv">
            
             <form method="post" action="sturegistercheck.jsp">
                 <h1>USER REGISTRATION<h1>
                         <p><input type="text" placeholder="student id" name="studentid" class="intpt" value="<%=rst.getString("studentid")%>" readonly></p>
        <p><input type="text" placeholder="name" name="name" class="intpt" value="<%=rst.getString("name")%>"></p>
        <p><input type="text" placeholder="username" name="username" class="intpt" value="<%=rst.getString("username")%>"></p>
        <p><input type="text" placeholder="phoneno" name="phoneno" class="intpt" value="<%=rst.getString("phoneno")%>"></p>
        <p><input type="text" placeholder="password" name="password" class="intpt" value="<%=rst.getString("password")%>"></p>
        <p><input type="text" placeholder="" name="dob" value="dd-mm-yyyy"  id="datefield" class="intpt" value="<%=rst.getString("dob")%>"></p>
        <p><input type="text" placeholder="age" name="age" class="intpt" value="<%=rst.getString("age")%>"></p>
        <p><input type="text" placeholder="Email" name="email" class="intpt" value="<%=rst.getString("email")%>"></p>
        <p><input type="text" placeholder="Department" name="department" class="intpt" value="<%=rst.getString("department")%>"></p>
        <p><input type="text" placeholder="Sem" name="sem" class="intpt" value="<%=rst.getString("sem")%>"></p>
        <p><input type="text" placeholder="Father name" name="father" class="intpt" value="<%=rst.getString("father")%>"></p>
        <p><input type="text" placeholder="Mother name" name="mother" class="intpt" value="<%=rst.getString("mother")%>"></p>
         <p><tr>
                <tr>
                <label>Gender:</label>
                <td>Male<input type="radio" name="gender" value="male" value="<%=rst.getString("gender")%>">Female<input type="radio" name="gender" value="female" value="<%=rst.getString("gender")%>"></td>
            </tr>
            </tr></p>
         <p><input type="text" placeholder="Address" name="address" class="intpt" value="<%=rst.getString("address")%>"></p>   
       <div class="bot">
        <p><input type= "submit" name="sub" value="Register" class="btn f1"></p>
         <p><input type= "reset" name="res" value="Reset" class="btn fr"></p>
        </div>
        </form>
        </div>
            </div>
            </section>
       <% } %>
       
    </body>
</html>
