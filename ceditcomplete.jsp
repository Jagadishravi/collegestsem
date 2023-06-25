<%-- 
    Document   : ceditcomplete
    Created on : Aug 6, 2022, 9:56:32 PM
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
          stmt.executeUpdate("update college set cname='"+cname+"',university='"+university+"',caddress='"+caddress+"',district='"+district+"',state='"+state+"',pincode='"+pincode+"',password='"+password+"'where collegeid='"+collegeid+"'");
         response.sendRedirect("viewcollege.jsp");
         %>
       
    </body>
</html>
