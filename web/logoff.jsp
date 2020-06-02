<%-- 
    Document   : logoff
    Created on : 18/05/2020, 20:04:18
    Author     : jhona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario Desconectado</title>
    </head>
    <body>
        <h1>Usuario Desconectado</h1>
        <a href="index.jsp">Retornar a pagina inicial</a>
        
        <%
            HttpSession sessao = request.getSession();
            sessao.removeAttribute("var_sessao_login");
            
        
        %>
        
    </body>
</html>
