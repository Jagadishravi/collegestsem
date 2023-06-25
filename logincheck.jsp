<%-- 
    Document   : logincheck
    Created on : Jun 24, 2022, 10:16:48 AM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String studentid=request.getParameter("studentid");
       String username=request.getParameter("username");
       String password=request.getParameter("password");
       System.out.println("studentid="+studentid);
       System.out.println("username="+username);
       System.out.println("password="+password);
       
       rst=stmt.executeQuery("select * from user where studentid='"+studentid+"',username='"+username+"' and password='"+ password+"'");
       
       if (rst.next())
                               {
       out.println("LOGIN SUCCESSFULL");
       }
       else
           out.println("LOGIN FAILED");
        %>
    </body>
</html>
