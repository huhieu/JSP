<%-- 
    Document   : add
    Created on : Feb 16, 2022, 5:38:28 PM
    Author     : hongd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add new</h1>
        <h2 style="color:red;">${error}</h2>
        <form action="add" method="post">
            enter id:<input type="text" name="id"/><br>
            enter name:<input type="text" name="name"/><br>
            enter dob:<input type="text" name="dob"/><br>
            enter gender: <input type="radio" name="gender" value="1"/> Male| <input type="radio" name="gender" value="0"/> Female<br>
            enter address:<input type="text" name="address"/><br>
            <input type="submit" value="SAVE"/>
        </form>
    </body>
</html>
