<%-- 
    Document   : view_outcome
    Created on : 13 May 2025, 5:28:20 PM
    Author     : untsa
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Project"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view_outcome Page</title>
    </head>
    <body>
        <h1>view_outcome!</h1>
        <%
            List<Project> projects =(List<Project>) request.getAttribute("projects");
            Integer countViewed = (Integer)session.getAttribute("countViewed");
            Integer totalCompanies = (Integer)request.getAttribute("totalCompanies");
            Integer totalProjects = (Integer)request.getAttribute("totalProjects");
            
            for (Project proj : projects) {
                    
                
        %>
        <table>
            <tr>
                <td> total Number of Companies</td>
                <td><%=totalCompanies%></td>
            </tr>
            <tr>
                <td> total Number of Projects</td>
                <td><%=totalProjects%></td>
            </tr>
            <tr>
                <th>Projects</th>
                
            </tr>
            <tr>
                <td>ID:</td>
                <td><%=proj.getId()%></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><%=proj.getCompName()%></td>
            </tr>
            <tr>
                <td>title:</td>
                <td><%=proj.getTitle()%></td>
            </tr>
            <tr>
                <td>description:</td>
                <td><%=proj.getDescription()%></td>
            </tr>
               <%}%>
        </table>
    </body>
</html>
