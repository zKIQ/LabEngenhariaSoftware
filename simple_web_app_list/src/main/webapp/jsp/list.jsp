<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.Noticia" %>
<!DOCTYPE html>
<html>
    <head> 
        <title> Listagem de Usuários </title>
        <meta charset="utf-8">
    </head>
    <body>        
        <%
			List<Noticia> noticia = (List<Noticia>) request.getAttribute("noticia");
            for(Noticia user: noticia){
                out.print("Noticia: " + user.getNoticia() + "<br/>");                
            } 		
        %>
    </body>    
</html>