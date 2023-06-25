<%-- 
    Document   : viewcandidate
    Created on : Aug 20, 2022, 7:55:32 AM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            </style>
    </head>
    <body>
         <%
         String cid = (String)session.getAttribute("cid");
        %>
         <section>
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
        <div class="outerdiv">
        <div class="innerdiv">
        <center><table border="1" style="font-size: 35px; color: black; background-color:lightblue;">
            <tr><th>NOMINEE</th><th>NOMINEE POSITION</th><th>STUDENT ID</th><th>COLLEGE ID</th><th>DATE</th><th>VOTE COUNT</th>
            </tr>       <%
       rst=stmt.executeQuery("select * from castvote where collegeid='"+cid+"'");
       while(rst.next()){
           out.println("<tr><td>"+rst.getString("nomineename")+"</td><td>"+rst.getString("nominee")+"</td><td>"+rst.getString("studentid")+"</td><td>"+rst.getString("collegeid")+"</td><td>"+rst.getString("date")+"</td><td>"+rst.getString("votecount")+"</td></tr>");
         }
%>
        </table>
        </section>
         <%@ include file="footer.jsp" %>
    </body>
</html>
