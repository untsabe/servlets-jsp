<%-- 
    Document   : add_outcome
    Created on : 02 Mar 2025, 5:11:41 PM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Outcome Page</title>
    </head>
    <body>
        <h1>Results</h1>
        
        <%
            int f1 = (Integer)request.getAttribute("n1");
             int s2 = (Integer)request.getAttribute("n2");
              int sum = (Integer)request.getAttribute("s");
        %>
        <p>
            the sum of <%=f1%> and <%=s2%> is <%=sum%> 
            
           
        </p>
    </body>
</html>
