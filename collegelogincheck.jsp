<%-- 
    Document   : collegelogincheck
    Created on : Aug 5, 2022, 5:17:47 PM
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
       String password=request.getParameter("Password");
       System.out.println("collegeid="+collegeid);
       System.out.println("password="+password);
       
       
       rst=stmt.executeQuery("select * from college where  collegeid='"+collegeid+"' and password='"+ password+"'");
       
       if (rst.next())
                               {
       out.println("LOGIN SUCCESSFULL");
       response.sendRedirect("collegepage.jsp");
        session.setAttribute("cid",collegeid);
       }
       else
           out.println("LOGIN FAILED");
        %>
    </body>
</html>
