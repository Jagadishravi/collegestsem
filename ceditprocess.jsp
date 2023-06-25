<%-- 
    Document   : ceditprocess
    Created on : Aug 5, 2022, 8:19:58 PM
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

                 height: 18cm;
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
                 color: #456990;
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
        String collegeid = request.getParameter("collegeid");
        rst=stmt.executeQuery("select * from college where collegeid='"+ collegeid +"'");
        out.println(collegeid);
        if(rst.next()){
                   %>
         <section class="header">
             <div class="outerdiv">
                 <div class="innerdiv">
             <form method="post" action="ceditcomplete.jsp">
                 <h1>College register<h1>
                         <p><input type="text"styleId="collegeid"  placeholder="college ID" name="collegeid" class="intpt" value="<%=rst.getString("collegeid")%>" readonly></p>
        <p><input type="text"styleId="cname "  placeholder="college Name" name="cname" class="intpt" value="<%=rst.getString("cname")%>"></p>
        <p><input type="text"styleId="university"  placeholder="university" name="university" class="intpt" value="<%=rst.getString("university")%>"></p>
        <p><input type="text"styleId="caddress"  placeholder="college address" name="caddress" class="intpt" value="<%=rst.getString("caddress")%>"></p>
        <p><input type="text"styleId="district"  placeholder="district" name="district" class="intpt" value="<%=rst.getString("district")%>"></p>
        <p><input type="text"styleId="state"  placeholder="state" name="state" class="intpt" value="<%=rst.getString("state")%>"></p>
        <p><input type="text"styleId="pincode"  placeholder="pincode" name="pincode" class="intpt" value="<%=rst.getString("pincode")%>"></p>
        <p><input type="text"styleId="password"  placeholder="Password" name="password" class="intpt" value="<%=rst.getString("password")%>"></p>
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
