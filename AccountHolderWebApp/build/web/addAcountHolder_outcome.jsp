<%-- 
    Document   : addAcountHolder_outcome
    Created on : 07 Apr 2025, 4:23:00 PM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add AcountHolder Outcome Page</title>
    </head>
    <body>
        <h1>Add AcountHolder Outcome!</h1>
        
        <%
            String fullname = (String)request.getParameter("fullname");
            
        %>
        <p>
            <b><%=fullname%></b> has been successfully persisted into the database.
            Please Click <a href="menu.jsp">here</a> to get back to main menu page
        </p>
    </body>
</html>
