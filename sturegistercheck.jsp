<%-- 
    Document   : usercheck
    Created on : Jul 28, 2022, 10:43:46 AM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="test.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user Page</title>
    </head>
    <body>
        <%
          String studentid=request.getParameter("studentid");
       String name=request.getParameter("name");
         String username=request.getParameter("username");
       String phoneno=request.getParameter("phoneno");
       //  String password=request.getParameter("password");
          String dob=request.getParameter("dob");
           String age=request.getParameter("age");
            String email=request.getParameter("email");
             String department=request.getParameter("department");
              String sem=request.getParameter("sem");
               String father=request.getParameter("father");
                String mother=request.getParameter("mother");
                 String gender=request.getParameter("gender");
                  String address=request.getParameter("address");
         String cid = (String)session.getAttribute("cid");
         stmt.executeUpdate("insert into user values('" + studentid + "','" + name + "','" + username + "','" + phoneno + "','abcd','" + dob + "','" + age + "','" + email + "','" + department + "','" + sem + "','" + father + "','" + mother + "','" + gender + "','" + address + "','" + cid + "')");
       response.sendRedirect("studentregister.jsp?msg=success");
       %>
    </body>
</html>
