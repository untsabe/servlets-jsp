<%-- 
    Document   : searchAccountHolder
    Created on : 07 Apr 2025, 6:42:14 PM
    Author     : untsa
--%>

<%@page import="za.ac.tut.entities.AccountHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search account holder Page</title>
    </head>
    <body>
        <h1>Search Account Holder!</h1>
        <%
           AccountHolder holder = (AccountHolder)request.getAttribute("ah");
        %>
        <p>
            Below are the details of the account holder
        </p>
        <table>
            <tr>
                <td><b>ID:</b></td>
                <td><%=holder.getId()%></td>
            </tr>
            <tr>
                <td><b>Full name:</b></td>
                <td><%=holder.getFullname()%></td>
            </tr>
            <tr>
                <td><b>Street:</b></td>
                <td><%=holder.getStreet()%></td>
            </tr>
            <tr>
                <td><b>City:</b></td>
                <td><%=holder.getCity()%></td>
            </tr>
            <tr>
                <td><b>Code:</b></td>
                <td><%=holder.getCode()%></td>
            </tr>
            <tr>
                <td><b>Cell Number:</b></td>
                <td><%=holder.getCellno()%></td>
            </tr>
            <tr>
                <td><b>Email Address</b></td>
                <td><%=holder.getEmailAddress()%></td>
            </tr>
           
        </table>
             <p>
                 Please click <a href="menu.jsp">here</a> to get back to the menu
            </p>
    </body>
</html>
