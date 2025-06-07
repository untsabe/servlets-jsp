<%-- 
    Document   : search_accountholder
    Created on : 07 Apr 2025, 1:25:14 AM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Account Holder Page</title>
    </head>
    <body>
        <h1>Search account holder!</h1>
        <p>
            Please enter the id of the account holder to search:
        </p>
        <form action="searchAccountHolderServlet.do" method="POST">
            
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id"></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" value="Search By ID"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
