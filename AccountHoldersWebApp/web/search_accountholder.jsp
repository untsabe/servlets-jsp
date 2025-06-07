<%-- 
    Document   : search_accountholder
    Created on : 09 Apr 2025, 9:53:50 AM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Account holder Page</title>
    </head>
    <body>
        <h1>Search Account holder</h1>
    </body>
    <p>
        Please enter the ID of the account Holder to search for.
    </p>
    <form action="SearchAccountHolderServlet.do" method="POST">
        <table border="1">
            
            <tbody>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id"</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SEARCH"</td>
                </tr>
            </tbody>
        </table>

    </form>
        
</html>
