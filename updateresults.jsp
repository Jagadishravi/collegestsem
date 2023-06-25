<%-- 
    Document   : updateresults
    Created on : Aug 26, 2022, 11:33:00 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="test.jsp" %>
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
/*css for section 1*/
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
/*            css for section 2*/
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
              label{
                 font-size: 20px;
                margin-right: 2in;
                display: inline-block;
             }
           </style> 
    </head>
    <body>
        <section>
            <section>
              <nav>
             <img src="images/raise-hand.png">
              <h1 style="font-size:30px;color: white; margin-right: 2.5in;font-family: serif;font-style:vollkorn;">college voting</h1>
         <div class="navbar">
             <ul>
             <li><a href="index.jsp">HOME</a></li>
             <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="collegepage.jsp">BACK</a></li>  
               <li><a style="border:1px solid; border-color: white; padding: 10px 10px;" href="collegelogin.jsp">LOGOUT</a></li>  
             </ul>
         </div>
             
              </nav>
                  
            </section>
            </section>
        <section>
        <%
        String cid = (String)session.getAttribute("cid");
       
        rst=stmt.executeQuery("select * from college where collegeid='"+ cid +"'");
        out.println(cid);
        if(rst.next())
        {
                   
        %>
        <div class="outerdiv">
         <div class="innerdiv">
            
             <form method="post" action="updateresultcheck.jsp">
                 <h1>RESULTS<h1>
                          <label style="margin-left: 2cm;">NOMINEE POSITION</label><p><select name="position" class="intpt">
              <option>PRESIDENT</option>
              <option>VICE-PRESIDENT</option>
               <option>SPORTS SECRETARY</option>
                <option>SPORTS CO-ORDINATOR</option>
                 <option>CULTURAL SECRETARY</option>
                  <option>CULTURAL CO-ORDINATOR</option>
              
          </select></p>
            <p><label style="margin-right:5.5cm;">STUDENT ID</label><input type="text" placeholder="studentid" name="student"  class="intpt" ></p>
             <p><label style="margin-left:0.5cm;">STUDENT NAME</label><input type="text" placeholder="Name" name="wname"  class="intpt" ></p>
             <p><label>VOTE COUNTS</label><input type="text" placeholder="counts" name="counts"  class="intpt" ></p>
             
            <p><label>COLLEGE ID</label><input type="text" placeholder="college ID" name="cid"  class="intpt" readonly value="<%=rst.getString("collegeid")%>"></p>
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
