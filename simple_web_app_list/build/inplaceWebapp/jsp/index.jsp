<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.Noticia" %>
<!DOCTYPE html>
<html>
    <head> 
        <title> Formulário Simples </title>
        <meta charset="utf-8">

        <style>
			body{
					background: #D3D3D3;
			}
		
            .exemplo1{
                align-content: center;
                width: 600px;
                background: red;
                font-size: 24px;
                margin: 0 auto;
                border: 5px solid #000;
            }
            .box{
                align-content: center;
                width: 700px;
                background: grey;
                font-size: 24px;
                padding: 30px;
                margin: 0 auto;
                border: 4px solid #000;

            }

 
        </style>
    </head>
    <body>
        <div class="box">
            <div class="exemplo1">
                <p>
                    Notícias na hora
                </p>
            </div>
    
            <div class="titulo">
                <h1>Bem vindos ao Notícias na hora</h1>
                fique a vontade para navegar por nossa coluna de noticias <br><br>
                
                Para cadastrar noticia
                <form method="get" 
                    action="cadastro.action">
                    <input type="submit" > <br><br>
                </form>

            </div>

            <div>
                <%
                List<Noticia> noticia = (List<Noticia>) request.getAttribute("noticia");
                for(Noticia user: noticia){
                    out.print("Noticia: "  + user.getNoticia() + "<br/> <br/>");                
                } 		
                %>
            </div>
        </div>
</body>     
</html>