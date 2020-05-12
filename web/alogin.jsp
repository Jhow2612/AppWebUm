<%-- 
    Document   : alogin
    Created on : 11/05/2020, 22:44:10
    Author     : jhona
--%>

<%@page import="Controller.CtrUsuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Usuarios"%>
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
            Usuarios objU = new Usuarios();
            List<Usuarios> LU = new ArrayList<Usuarios>();
            CtrUsuarios CtrU = new CtrUsuarios();
            objU.setLogin(request.getParameter("login"));
            objU.setSenha(request.getParameter("senha"));
            LU = CtrU.ListarUsuario(objU);
            
                for(int i=0; i<LU.size(); i++)
                {
                    if(LU.size()==1)
                      out.print("Usuário conectado");
                    if(LU.size()==0)
                      response.sendRedirect("login.jsp");
                }
        
        %>
    </body>
</html>
