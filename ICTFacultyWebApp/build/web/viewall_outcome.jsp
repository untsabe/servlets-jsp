<%-- 
    Document   : viewall_outcome
    Created on : 22 May 2025, 11:28:27 PM
    Author     : untsa
--%>

<%@page import="za.ac.tut.entities.Project"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>viewall_outcome Page</title>
    </head>
    <body>
        <h1>viewall_outcome!</h1>
         
        <%
            List<Project> projects = (List<Project>)request.getAttribute("projects");
            Integer studentViewed =(Integer) request.getAttribute("studentViewed");
            for (Project proj : projects) {
                    
                
        %>
       
        <table>
            <tr>
                <td>Company Name:</td>
                <td><%=proj.getCompName()%></td>
            </tr>
            <tr>
                <td>Title1:</td>
                <td><%=proj.getTitle()%>></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><%=proj.getDescription()%></td>
            </tr>
            <tr>
                <td>Title2:</td>
                <td><%=proj.getTitle()%>></td>
            </tr>
            <tr>
                <td>Description2:</td>
                <td><%=proj.getDescription()%></td>
            </tr>
            <tr>
                <td>Title3:</td>
                <td><%=proj.getTitle()%>></td>
            </tr>
            <tr>
                <td>Description3:</td>
                <td><%=proj.getDescription()%></td>
            </tr>
            <tr>
                <td>Creation Date:</td>
                <td><%=proj.getCreationDate()%></td>
            </tr>
            <%}%>
            
        </table>
            <p>Click <a href="menu.html">here</a> Or <a href="index.html">Logout</a></p>
    </body>
</html>
