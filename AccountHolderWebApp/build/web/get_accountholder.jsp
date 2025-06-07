<%-- 
    Document   : get_accountholder
    Created on : 07 Apr 2025, 1:31:07 AM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Account Holder Page</title>
    </head>
  <body>
        <h1>Get account holder!</h1>
        <p>
            Please enter the id of the account holder to get:
        </p>
        <form action="SeachaccountHolderServlet.do" method="POST">
            
            <table>
                
                 <tr>
                    <td></td>
                    <td><input type="submit" value="get account holders"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
