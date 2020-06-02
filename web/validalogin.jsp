<%-- 
    Document   : teste
    Created on : 18/05/2020, 20:11:27
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
        <h1>Hello World!</h1>
          <%
              //verifica se está ou não logado
            HttpSession sessao = request.getSession();
            out.print(sessao.getAttribute("var_sessao_login"));
            
            //se não estiver conectado ele vai pra login.jsp
            if(sessao.getAttribute("var_sessao_login")==null)
                response.sendRedirect("login.jsp");
        %>
    </body>
</html>
