<%-- 
    Document   : stats_outcome
    Created on : 23 May 2025, 12:03:15 AM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>stats_outcome Page</title>
    </head>
    <body>
        <h1>stats_outcome!</h1>
        <table>
            <tr>
                <td>Student Viewed:</td>
                <td><%=request.getAttribute("studentViewed")%></td>
            </tr>
            <tr>
                <td>Total Number Of Companies</td>
                <td><%=request.getAttribute("totalNumberOfCompanies")%></td>
            </tr>
            <tr>
                <td>total NumberOfProject:</td>
                <td><%=request.getAttribute("totalNumberOfProject")%></td>
            </tr>
        </table>
            <p>Click <a href="member.html">here</a> Or <a href="index.html">Logout</a></p>
    </body>
</html>
