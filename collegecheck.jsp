<%-- 
    Document   : collegecheck
    Created on : Aug 1, 2022, 10:55:17 PM
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
         String collegeid=request.getParameter("collegeid");
       String cname=request.getParameter("cname");
         String university=request.getParameter("university");
       String caddress=request.getParameter("caddress");
         String district=request.getParameter("district");
          String state=request.getParameter("state");
           String pincode=request.getParameter("pincode");
            String password=request.getParameter("password");
         
         stmt.executeUpdate("insert into college values('"+collegeid+"','"+cname+"','"+university+"','"+caddress+"','"+district+"','"+state+"','"+pincode+"','"+password+"')");
       response.sendRedirect("collegelogin.jsp?msg=success");
       %>
    </body>
</html>
