<%-- 
    Document   : horoscopo
    Created on : 24-feb-2020, 22:01:18
    Author     : Jose
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Horóscopo</h1>
        <form action="horoscopo" method="post">
            <label for="nombre">Nombre:</label><input type="text" 
                                                      id="nombre" name="nombre"/>
            <% ArrayList<String> meses = (ArrayList<String>) 
                    request.getAttribute("meses"); %>
            
            <br><label for="mes">Mes:</label>
            <select name="mes" id="mes">
            <% for( int i=0; i<meses.size(); i++){ %>
            <option value="<%=meses.get(i)%>"><%=meses.get(i)%> </option>
            <% } %>

            </select>
            <% ArrayList<String> dias = (ArrayList<String>) 
                    request.getAttribute("dias"); %>
            
            <br><label for="dia">Dia:</label><select name="dia" id="dia">
            <% for( int d=0; d<dias.size(); d++){ %>
                <option value="<%=dias.get(d)%>"><%=dias.get(d)%> </option>   
             <% } %>
            </select>
            <input type="submit" value="Enviar">
        </form>
             <% String signo = (String) request.getAttribute("signo");
             if ( signo!=null ) { %>
             <h1>Eres del signo: <%=signo%></h1>
             <% } %> 
    </body>
</html>
