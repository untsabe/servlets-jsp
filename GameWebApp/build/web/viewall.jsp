<%-- 
    Document   : viewall
    Created on : 25 May 2025, 3:32:49 PM
    Author     : untsa
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>viewall Page</title>
    </head>
    <body>
        <h1>viewall!</h1>
        <%
              Integer  numGamesPlayed =(Integer)session.getAttribute("numGamesPlayed");
     Integer  gamesWonSiri =(Integer)session.getAttribute("gamesWonSiri");
     Integer  gamesWonPlayer =(Integer)session.getAttribute("gamesWonPlayer");
     Integer  numtie =(Integer)session.getAttribute("numtie");
       List<String> playerSigns = (List<String>)session.getAttribute("playerSigns");
       List<String> siriSigns = (List<String>)session.getAttribute("siriSigns");
       String name = (String)session.getAttribute("name");
        %>
        <table>
            <tr>
                <td>Number Games Played :</td>
                <td><%=numGamesPlayed%></td>
            </tr>
            <tr>
                <td>gamesWonSiri :</td>
                <td><%=gamesWonSiri%></td>
            </tr>
            <tr>
                <td>gamesWonPlayer:</td>
                <td><%=gamesWonPlayer%></td>
            </tr>
            <tr>
                <td>numtie :</td>
                <td><%=numtie%></td>
            </tr>
            <tr>
                <td>playerSigns :</td>
                <td><%=playerSigns%></td>
            </tr>
            <tr>
                <td>siriSigns :</td>
                <td><%=siriSigns%></td>
            </tr>
            <tr>
                <td>name :</td>
                <td><%=name%></td>
            </tr>
         
        </table>
            <ul>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="LogoutServlet.do">Logout</a></li>
        </ul>
    </body>
</html>
