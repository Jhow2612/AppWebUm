<%-- 
    Document   : login
    Created on : 11/05/2020, 22:38:18
    Author     : jhona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
    <p>    
        <form name="f" method="POST" action="alogin.jsp">
            Login: <input type="text" name="login" value=""/><br>
            Senha: <input type="text" name="senha" value=""/>
                   <input type="submit" value="Enviar" name="btnEnviar"/>

        </form>
    </p>
    </body>
</html>
