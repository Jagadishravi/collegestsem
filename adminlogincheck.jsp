<%-- 
    Document   : adminlogincheck
    Created on : Aug 1, 2022, 8:16:15 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
         String userid=request.getParameter("userid");
       String username=request.getParameter("username");
       String password=request.getParameter("password");
       System.out.println("userid="+userid);
       System.out.println("username="+username);
       System.out.println("password="+password);
       
       rst=stmt.executeQuery("select * from admin where userid='"+userid+"', username='"+username+"' and password='"+ password+"'");
       
       if (rst.next())
                               {
       out.println("LOGIN SUCCESSFULL");
       }
       else
           out.println("LOGIN FAILED");
        %>
    </body>
</html>
