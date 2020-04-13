<%-- 
    Document   : editar
    Created on : 11/04/2020, 19:00:37
    Author     : Roberta
--%>

<%@page import="model.Cliente"%>
<%@page import="dao.Editar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int idCliente = Integer.parseInt(request.getParameter("idCliente"));
            
            Editar objEditar = new Editar();
            
            Cliente cliente = objEditar.pegarValorUsuario(idCliente);
       
        %>
        
    <center>
        <form action="controller/editar_controller.jsp">
            Código<input type="hidden" name="idCliente" value="<%=cliente.getIdCliente()%>"> <br>
            Nome<input type="text" name="nome" value="<%=cliente.getNome()%>"> <br>
            CPF<input type="text" name="CPF" value="<%=cliente.getCPF()%>"> <br>
            numeroConta<input type="text" name="numeroConta" value="<%=cliente.getNumeroConta()%>"> <br>
            dataNascimento<input type="text" name="dataNascimento" value="<%=cliente.getDataNascimento()%>"> <br>
            telefone<input type="text" name="telefone" value="<%=cliente.getTelefone()%>"> <br>
            gerente<input type="text" name="gerente" value="<%=cliente.getGerente()%>"> <br>

            <input type="submit" value="Editar">
        </form>
            
    </center>
    </body>
</html>
