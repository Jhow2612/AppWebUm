<%-- 
    Document   : listarprodutos
    Created on : 18/05/2020, 22:26:32
    Author     : jhona
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="DAO.DAOProdutos"%>
<%@page import="Model.Produtos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>
            <%
                Produtos p = new Produtos();
                DAOProdutos dp = new DAOProdutos();
                List<Produtos> ListarP = new ArrayList<Produtos>();
                ListarP = dp.ListarProdutos();
                
                    for (int i = 0; i < ListarP.size(); i++) 
                        {
                            out.println("<form name='"+ListarP.get(i).getId_produto()+
                                    "' action='addproduto.jsp' method='POST'>"+
                                    "Código: "+ListarP.get(i).getId_produto()+" Descrição: "
                            +ListarP.get(i).getDescricao()+" Estoque: "
                            +ListarP.get(i).getEstoque()+ " Preço: "
                            +ListarP.get(i).getPreco());                            
                            out.println("<input name='id_produto' type='hidden' value='"+ListarP.get(i).getId_produto()+
                                    "'/>");
                            out.println("<input type='submit' value='Comprar' name='btnComprar'/>");
                            out.print("</form>");
                        }
                    
            
            
            %>
        </p>
    </body>
</html>
