<%-- 
    Document   : stuupdatecheck
    Created on : Aug 23, 2022, 11:30:01 AM
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
       String name=request.getParameter("name");
         String username=request.getParameter("username");
       String phoneno=request.getParameter("phoneno");
         String password=request.getParameter("password");
           String email=request.getParameter("email");
           String cid = (String)session.getAttribute("cid");
          stmt.executeUpdate("update user set name='"+name+"',username='"+username+"',phoneno='"+phoneno+"',password='"+password+"',email='"+email+"',collegeid='"+cid+"'where studentid='"+studentid+"'");
         response.sendRedirect("studentlogin.jsp");
         %>
    </body>
</html>
