    <%@page import="DAO.DAOProdutos"%>
<%@page import="Model.Produtos"%>
<%-- 
    Document   : addproduto
    Created on : 01/06/2020, 20:39:06
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
        <form name='f' action='addpedido.jsp' method='POST'>
        <%
            Produtos objP = new Produtos();
            objP.setId_produto(Integer.parseInt(request.getParameter("id_produto")));
            DAOProdutos ObjDAOP = new DAOProdutos();
            objP = ObjDAOP.BuscaProID(objP);
            
            out.println("<p><h1> Compre já "+objP.getDescricao()+"</h1></p>");
            out.println("<p> Cod.(");
            out.println(objP.getId_produto());
            out.println(") <br>");
            out.println("Detalhes: ");
            out.println(objP.getDescricao());
            out.println("<br>");
            out.println("Estoque: ");
            out.println(objP.getEstoque());
            out.println("<br>");
            out.println("R$: ");
            out.println(objP.getPreco());
            out.println("<br>");
            out.println("Selecione a quantidade: ");            
            out.println("<select name='quantidade'>");
            for (int i = 0; i<=objP.getEstoque(); i++) 
                {
                    if(i>=1)
                    {    
                    out.println("<option value='"+i+"'>"+i+"</option>");
                    }
                }
            out.println("</select>");
            out.println("<input type='submit' value='Comprar'/>");
        %>
        </form>
    </body>
</html>
