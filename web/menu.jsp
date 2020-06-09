<%-- 
    Document   : menu
    Created on : 08/06/2020, 22:05:37
    Author     : jhona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <a href="Pais/cadpais.jsp">Cadastrar país</a><br>
        <a href="Pais/listarpais.jsp">Listar país</a><br>
        <a href="listarprodutos.jsp">Produtos</a><br>
        <%
            HttpSession sessaomenu = request.getSession();
            if(sessaomenu.getAttribute("var_sessao_login")==null)
                out.print("<a href='login.jsp'>Entrar</a> <br>");
            else
                out.print("<a href='logoff.jsp'>Sair</a>");
         
        %>

        