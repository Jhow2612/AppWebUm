<%-- 
    Document   : alogin
    Created on : 11/05/2020, 22:44:10
    Author     : jhona
--%>

<%@page import="Controller.CtrCliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Pagina Interna do Sistema</h1>
        <%
            Cliente objU = new Cliente();
            List<Cliente> LU = new ArrayList<Cliente>();
            CtrCliente CtrU = new CtrCliente();
            
            objU.setLogin(request.getParameter("login"));
            objU.setSenha(request.getParameter("senha"));
            
            LU = CtrU.ListarCliente(objU);
            
                for(int i=0; i<LU.size(); i++)
                {
                    if(LU.size()==1)
                    {  
                      HttpSession sessao = request.getSession();
                      sessao.setAttribute("logado", 1);
                      sessao.setAttribute("var_sessao_login", objU.getLogin());
                      sessao.setAttribute("id_cliente", LU.get(i).getId_cliente());
                      //out.print("Bem Vindo!!"+sessao.getAttribute("var_sessao_login"));
                      response.sendRedirect("listarprodutos.jsp");
                    }
                    if(LU.size()==0)
                      response.sendRedirect("login.jsp");
                }
        
        %>
    </body>
</html>
