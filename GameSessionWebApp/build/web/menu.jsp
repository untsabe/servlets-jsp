<%-- 
    Document   : menu
    Created on : 25 May 2025, 2:01:06 PM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <%
            String compName = application.getInitParameter("compName");
            String uniqueId = (String)session.getAttribute("uniqueId");
            String name = (String)session.getAttribute("name");
            
        %>
        <p>
            Hi <%=name%> my name is <%=compName%> your id is <%=uniqueId%>
        </p>
        <ul>
            <li><a href="playerMenu.jsp">Player</a></li>
            <li><a href="ownerMenu.jsp">Owner</a></li>
        </ul>
    </body>
</html>
