<%-- 
    Document   : add_accountholder
    Created on : 09 Apr 2025, 9:46:37 AM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Account holder Page</title>
    </head>
    <body>
        <h1>Add Account holder</h1>
        <p>
            Please add account holder details below:
        </p>
        <form action="AddAccountHolderServlet" method="POST">
            <table border="1">
                
                <tbody>
                    <tr>
                        <td>ID:</td>
                        <td><input type="text" name="id"/></td>
                    </tr>
                    <tr>
                        <td>Full Name:</td>
                        <td><input type="text" name="fullname"/></td>
                    </tr>
                    <tr>
                        <td>Street:</td>
                        <td><input type="text" name="street"/></td>
                    </tr>
                    <tr>
                        <td>city:</td>
                        <td><input type="text" name="city"/></td>
                    </tr>
                    <tr>
                        <td>Code:</td>
                        <td><input type="text" name="code"/></td>
                    </tr>
                    <tr>
                        <td>Cell number:</td>
                        <td><input type="text" name="cellNo"/></td>
                    </tr>
                    <tr>
                        <td>Balance:</td>
                        <td><input type="text" name="balance"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="ADD ACCOUNT Holder"/></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
