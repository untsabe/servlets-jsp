<%-- 
    Document   : get_accountholder_outcome
    Created on : 07 Apr 2025, 8:33:55 PM
    Author     : untsa
--%>

<%@page import="za.ac.tut.entities.AccountHolder"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Account holder Page</title>
    </head>
    <body>
        <h1>Get Account holder!</h1>
        <%
             List<AccountHolder> holders = (List<AccountHolder>)request.getAttribute("holders");
             
                for (AccountHolder holds : holders) {
                        
                    
        %>
        <p>
            Below are the account holders retrieved from database.
        </p>
        <table>
            <tr>
                <td>ID:</td>
                <td><%=holds.getId()%></td>
            </tr>
            <tr>
                <td>full Name:</td>
                <td><%=holds.getFullname()%></td>
            </tr>
            <tr>
                <td>Street:</td>
                <td><%=holds.getStreet()%></td>
            </tr>
            <tr>
                <td>City:</td>
                <td><%=holds.getId()%></td>
            </tr>
            <tr>
                <td>Code:</td>
                <td><%=holds.getCode()%></td>
            </tr>
            <tr>
                <td>Cell Number:</td>
                <td><%=holds.getCellno()%></td>
            </tr>
            <tr>
                <td>Email Address:</td>
                <td><%=holds.getEmailAddress()%></td>
                
            </tr>
           <%
               }
           %>
        </table>
           <p>
                Please Click <a href="menu.jsp">here</a> to get back to menu
           </p>
    </body>
</html>
