<%-- 
    Document   : castcheck
    Created on : Aug 20, 2022, 8:04:04 AM
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
         String nomineename=request.getParameter("nominee");
       String studentid=request.getParameter("studentid");
         String collegeid=request.getParameter("collegeid");
       String date1=request.getParameter("getdate");
       String nomname = request.getParameter("nomineename");
       
       System.out.println(nomineename);
       System.out.println(studentid);
       System.out.println(collegeid);
       System.out.println(date1);
       rst= stmt.executeQuery("select * from studentvotes where studentid='"+studentid+"' and date='"+date1+"'");
       if(rst.next()){
           out.println("You have already voted");
       }
             else{
      rst= stmt.executeQuery("select * from castvote where nomineename='"+nomineename+"' and date='"+date1+"'");
       if(rst.next()){
           
           int votecount = Integer.parseInt(rst.getString("votecount")); 
           votecount = votecount+1;
           String votecount1= String.valueOf(votecount);
           stmt.executeUpdate("update castvote set votecount='"+votecount1+"' where nomineename='"+nomineename+"'");
           stmt.executeUpdate("insert into studentvotes values('"+studentid+"','"+date1+"')");
           out.println("Vote Successfull");
           out.println("<a href=studentpage.jsp>Go Home</a>");
                     }
       else{
          
           stmt.executeUpdate("insert into castvote values('"+nomineename+"','"+studentid+"','"+collegeid+"','"+date1+"','1','"+nomname+"')");
           stmt.executeUpdate("insert into studentvotes values('"+studentid+"','"+date1+"')");
           out.println("<center><h1>Vote Successfull</h1></center>");
           out.println("<a href=studentpage.jsp>Go Home</a>");
       }
         
             }
       %>
    </body>
</html>
