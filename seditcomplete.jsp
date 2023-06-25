<%-- 
    Document   : seditcomplete
    Created on : Aug 7, 2022, 7:42:50 PM
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
         String username=request.getParameter("username");
       String phoneno=request.getParameter("phoneno");
         String password=request.getParameter("password");
         String dob=request.getParameter("dob");
          String age=request.getParameter("age");
           String email=request.getParameter("email");
            String department=request.getParameter("department");
             String sem=request.getParameter("sem");
              String father=request.getParameter("father");
               String mother=request.getParameter("mother");
         String gender=request.getParameter("gender");
         String address=request.getParameter("address");
          stmt.executeUpdate("update user set name='"+name+"',username='"+username+"',phoneno='"+phoneno+"',password='"+password+"',dob='"+dob+"',age='"+age+"',department='"+department+"',sem='"+sem+"',father='"+father+"',mother='"+mother+"',gender='"+gender+"',address='"+address+"'where studentid='"+studentid+"'");
         response.sendRedirect("viewstudent.jsp");
         %>
    </body>
</html>
