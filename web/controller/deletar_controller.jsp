<%-- 
    Document   : deletar_controller
    Created on : 11/04/2020, 18:17:18
    Author     : Roberta
--%>
<%@page import="dao.Deletar"%>
<%@page import="dao.Editar"%>
<%@page import="model.Cliente"%>
<%@page import="dao.Inserir"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>deletar-controller</title>
    </head>
    <body>
        
        <%
            int idCliente = Integer.parseInt(request.getParameter("idCliente"));
            
            Deletar objDeletar = new Deletar();
            
            objDeletar.deletar(idCliente);
        
        
        %>
        
        <script type="text/javascript">

            window.location.href="http://localhost:50302/projetomobile/inserir.jsp"
        </script>
    </body>
</html>
