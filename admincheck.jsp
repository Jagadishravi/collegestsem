<%-- 
    Document   : admincheck
    Created on : Jul 31, 2022, 4:57:28 PM
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
         String userid=request.getParameter("userid");
       String name=request.getParameter("name");
         String username=request.getParameter("username");
       String phoneno=request.getParameter("phoneno");
         String password=request.getParameter("password");
          String dob=request.getParameter("dob");
           String age=request.getParameter("age");
            String email=request.getParameter("email");
               String father=request.getParameter("father");
                String mother=request.getParameter("mother");
                 String gender=request.getParameter("gender");
                  String address=request.getParameter("address");
         
         stmt.executeUpdate("insert into admin values('"+userid+"','"+name+"','"+username+"','"+phoneno+"','"+password+"','"+dob+"','"+age+"','"+email+"','"+father+"','"+mother+"','"+gender+"','"+address+"')");
       response.sendRedirect("adminlogin.jsp?msg=success");
       %>
    </body>
</html>
