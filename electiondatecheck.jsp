<%-- 
    Document   : electiondatecheck
    Created on : Aug 16, 2022, 11:01:49 PM
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
                 String nominee=request.getParameter("nominee");
                  String date=request.getParameter("date");
         String cid = (String)session.getAttribute("cid");
         stmt.executeUpdate("insert into date values('" + nominee + "','" + date + "','" + cid + "')");
       response.sendRedirect("electiondate.jsp?msg=success");
       %>
    </body>
</html>
