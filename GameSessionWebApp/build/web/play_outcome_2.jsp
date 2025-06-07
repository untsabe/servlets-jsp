<%-- 
    Document   : play_outcome
    Created on : 25 May 2025, 2:41:43 PM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>play_outcome Page</title>
    </head>
    <body>
        <h1>play_outcome</h1>
        <%
            String playerSign =(String) session.getAttribute("playerSign");
        String siriSign = (String) session.getAttribute("siriSign");
        
        String outcome = (String) session.getAttribute("outcome");
        %>
        
        <p>
            Siri sign: <%=siriSign%>
        </p>
        <p>
            Player sign: <%=playerSign%>
        </p>
        <p>
            Outcome: <%=outcome%>
        </p>
        <ul>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="LogoutServlet.do">Logout</a></li>
        </ul>
    </body>
</html>
