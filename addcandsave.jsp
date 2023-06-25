<%-- 
    Document   : addcandsave
    Created on : Aug 15, 2022, 6:48:48 PM
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
         String studentid=request.getParameter("studentid");
       String name=request.getParameter("name");
         String department=request.getParameter("department");
       String sem=request.getParameter("sem");
         String gender=request.getParameter("gender");
          String collegeid=request.getParameter("cid");
           String nominee=request.getParameter("nominee");
         
         stmt.executeUpdate("insert into nominee values('"+studentid+"','"+name+"','"+department+"','"+sem+"','"+gender+"','"+collegeid+"','"+nominee+"')");
       response.sendRedirect("addcandidate.jsp?msg=success");
       %>
    </body>
</htm
