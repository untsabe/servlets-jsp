<%-- 
    Document   : outcome
    Created on : 26 Mar 2025, 3:14:32 PM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <h1>Outcome</h1>
        
        <%
            String message = (String)request.getAttribute("message");
            String cypherText = (String)request.getAttribute("cipherText");
        %>
        <p><b>Plain Text</b></p>
        
        <textarea rows="5" cols="25" name="message" disabled="">
            <%=message%>
        </textarea>
        <p><b>Encrypted Text</b></p>
        
        <textarea rows="5" cols="25" name="message" disabled="">
            <%=cypherText%>
        </textarea>
    </body>
</html>
