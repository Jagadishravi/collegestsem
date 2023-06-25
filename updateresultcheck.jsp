<%-- 
    Document   : updateresultcheck
    Created on : Aug 26, 2022, 11:46:58 PM
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
                 String position=request.getParameter("position");
                  String student=request.getParameter("student");
                  String wname=request.getParameter("wname");
                  String counts=request.getParameter("counts");
         String cid = (String)session.getAttribute("cid");
         stmt.executeUpdate("insert into result values('" + position + "','" + student + "','" + wname + "','" + counts + "','" + cid + "')");
       response.sendRedirect("updateresults.jsp?msg=uploaded successfully");
       %>
    </body>
</html>
