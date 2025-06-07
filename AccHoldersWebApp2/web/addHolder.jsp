<%-- 
    Document   : addHolder
    Created on : 23 Apr 2025, 11:49:57 PM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>addHolder Page</title>
    </head>
    <body>
        <h1>addHolder!</h1>
        <form action="AddHolderServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Street:</td>
                    <td><input type="text" name="street"></td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><input type="text" name="city"></td>
                </tr>
                <tr>
                    <td>Code:</td>
                    <td><input type="text" name="code"></td>
                </tr>
                <tr>
                    <td>Contacts 1:</td>
                    <td><input type="text" name="contacts1"></td>
                </tr>
                <tr>
                    <td>Contacts 2:</td>
                    <td><input type="text" name="contacts2"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD ACC HOLDER"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
