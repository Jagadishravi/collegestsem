<%-- 
    Document   : studeletecheck
    Created on : Aug 7, 2022, 6:59:03 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>
<html>
    <head>
       <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String studentid = request.getParameter("studentid");
        stmt.executeUpdate("delete from user where studentid='"+studentid+"'");
         response.sendRedirect("viewstudent.jsp");
         %>
    </body>
</html>
