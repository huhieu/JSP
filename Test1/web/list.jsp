<%-- 
    Document   : list
    Created on : Jan 19, 2022, 10:35:25 PM
    Author     : hongd
--%>

<%@page import="java.util.List"%>
<%@page import="model.Job"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                border-collapse: collapse;
                width: 40%;
            }
        </style>
    </head>
    <body>
        <h1>List of all job(s)</h1>
        <table border="1px">
            <tr>
                <th>Job ID</th>
                <th>Job Name</th>
                <th>Job Salary</th>
                <th>Hire Date</th>
                <th>Activated(Yes/No)</th>
            </tr>
            <%
                List<Job> list = (List<Job>)request.getAttribute("data");
                String active;
                int size =list.size();
                for (Job i:list) {
                    int id = i.getId();
                
                if (i.getActivated()==1) {
                        active = "Yes";
                }else{
                    active = "No";
                }
            %>
            <tr>
                <td><%= id %></td>
                <td><%= i.getName()%></td>
                <td><%= i.getSalary()%></td>
                <td><%= i.getDate()%></td>
                <td><%= active %></td>
            </tr>
            
            <%
                
              }
            %>
            
        </table>
            <h2>The list has <%=size%> jobs in total</h2>
    </body>
</html>
