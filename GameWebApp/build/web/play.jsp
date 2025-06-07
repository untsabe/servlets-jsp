<%-- 
    Document   : play
    Created on : 25 May 2025, 2:20:51 PM
    Author     : untsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>play Page</title>
    </head>
    <body>
        <h1>play with siri!</h1>
        <p>
            Choose Sign ROCK , PAPER OR SCISSOR AND PLAY!
        </p>
        <form action="PlayWithSiriServlet.do" method="POST">
            <table>
                <tr>
                    <td>Player Sign:</td>
                    <td>
                    <select name="playersign">
                            <option value="rock">ROCK</option>
                            <option value="paper">PAPER</option>
                            <option value="scissor">SCISSOR</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="PLAY"></td>
                </tr>
            </table>
        </form>
        <ul>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="LogoutServlet.do">Logout</a></li>
        </ul>
    </body>
</html>
