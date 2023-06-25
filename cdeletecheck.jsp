<%-- 
    Document   : cdeletecheck
    Created on : Aug 5, 2022, 7:46:02 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>
<html>
    <head>
         <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <title>college delete</title>
    </head>
    <body>
         <%
        String collegeid = request.getParameter("collegeid");
        stmt.executeUpdate("delete from college where collegeid='"+collegeid+"'");
         response.sendRedirect("viewcollege.jsp");
         %>
    </body>
</html>
