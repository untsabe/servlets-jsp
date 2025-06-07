<%-- 
    Document   : add_accountholder
    Created on : 06 Apr 2025, 5:13:34 PM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add AccountHolder Page</title>
    </head>
    <body>
        <h1>Add Account Holder!</h1>
        <p>
            Please add account holder details below:
        </p>
        <form action="AddAccountholderServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>Full Name:</td>
                    <td><input type="text" name="fullname"></td>
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
                    <td>Cell Number:</td>
                    <td><input type="text" name="cellno"></td>
                </tr>
                <tr>
                    <td>Balance:R</td>
                    <td><input type="text" name="balance"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD ACCOUNT HOLDER"></td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
