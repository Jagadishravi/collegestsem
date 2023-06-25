<%-- 
    Document   : studentlogincheck
    Created on : Aug 17, 2022, 8:59:29 PM
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
       String password=request.getParameter("Password");
       System.out.println("studentid="+studentid);
       System.out.println("password="+password);
       
       
       rst=stmt.executeQuery("select * from user where  studentid='"+studentid+"' and password='"+ password+"'");
       
       if (rst.next())
                               {
       out.println("LOGIN SUCCESSFULL");
        session.setAttribute("sid",studentid);
        session.setAttribute("cid",rst.getString("collegeid"));
       response.sendRedirect("studentpage.jsp");
      
       
       }
       else
           out.println("LOGIN FAILED");
        %>
    </body>
</html>
