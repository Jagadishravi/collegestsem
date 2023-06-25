<%-- 
    Document   : adminregister
    Created on : Jul 31, 2022, 4:36:06 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Registration</title>
    </head>
    <body>
        <div class="outerdiv">
         <div class="innerdiv">
            
             <form method="post" action="admincheck.jsp">
                 <h1>ADMIN REGISTRATION<h1>
          <label>USER ID</label><input type="text" name="userid"><br>               
        <label>NAME</label><input type="text" name="name"><br>
        <label>USERNAME</label><input type="text" name="username"><br>
        <label>PHONE NO</label><input type="text" name="phoneno"><br>
        <label>PASSWORD</label><input type="text" name="password"><br>
        <label>DOB</label><input type="text" name="dob" value="dd-mm-yyyy"  id="datefield"><br>
         <label>AGE</label><input type="text" name="age"><br>
       
        <label>EMAIL</label><input type="text" name="email"><br>
         <label>FATHER NAME</label><input type="text" name="name"><br>
         <label>MOTHER NAME</label><input type="text" name="mothername"><br>
         <tr>
                <tr>
                <td>gender</td>
                <td>Male<input type="radio" name="gender" value="male">Female<input type="radio" name="gender" value="female"></td>
            </tr>
            </tr><br>
            <td>ADDRESS</td>
                <td><textarea name="address" id="address"></textarea></td><br>
        <input type= "submit" >
        </form>
        </div>
            </div>
         <%@ include file="footer.jsp" %>
    </body>
</html>
