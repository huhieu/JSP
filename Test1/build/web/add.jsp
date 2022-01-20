<%-- 
    Document   : add
    Created on : Jan 20, 2022, 11:02:31 AM
    Author     : hongd
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        #btn{
            text-decoration: none;
            color: black;
        }
    </style>
    <body>
        <h1>Enter the information of Job</h1>
        
        <form action="add" method="post">
            Job Name <input type="text" name="name"><br>
            Job Salary <input type="number" name="salary"><br>
            
        <%
            Date d = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        %>
            Date Created <input type="text" placeholder="" name="date" value="<%= sdf.format(d) %>" readonly>(MM/dd/yyyy)<br>
            Activated <div><input type="radio" name="choice" value="1">Yes <input type="radio" name="choice" value="0">No</div>
            <input type="submit" value="Save" />
            <button><a href="list" id="btn">All Jobs</a></button>
        </form>
    </body>
</html>
