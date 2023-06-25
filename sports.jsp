<%-- 
    Document   : sports
    Created on : Aug 1, 2022, 8:55:43 PM
    Author     : Jagadeesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sports</title>
    </head>
    <body>
       <div class="outerdiv">
         <div class="innerdiv">
            
             <form method="post" action="usercheck.jsp">
                 <h1>USER REGISTRATION<h1>
        <label>Nomination number</label><input type="text" name="nomineenumber"  disabled><br>
        <label>NAME</label><input type="text" name="name"><br>
        <label>Symbol</label><input type="text" name="username"><br>
        <label>FATHER NAME</label><input type="text" name="name"><br>
         <label>MOTHER NAME</label><input type="text" name="mothername"><br>
        <label>PHONE NO</label><input type="text" name="phoneno"><br>
        <td>ADDRESS</td>
                <td><textarea name="address" id="address"></textarea></td><br>
        <label>DOB</label><input type="text" name="dob" value="dd-mm-yyyy"  id="datefield"><br>
         <label>DEPARTMENT</label><input type="text" name="department"><br> 
        <label>AGE</label><input type="text" name="age"><br>
        <label>EMAIL</label><input type="text" name="email"><br>
       <label>SEM</label><input type="text" name="sem"><br>
         <tr>
                <tr>
                <td>gender</td>
                <td>Male<input type="radio" name="gender" value="male">Female<input type="radio" name="gender" value="female"></td>
            </tr>
            </tr><br>
            
        <input type= "submit" >
        </form>
        </div>
            </div>
    </body>
</html>
