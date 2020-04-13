<%-- 
    Document   : editar_controler
    Created on : 11/04/2020, 18:23:49
    Author     : Roberta
--%>

<%@page import="model.Cliente"%>
<%@page import="dao.Editar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>editar controller</title>
    </head>
    <body>
        
        
        <%
        
            int idCliente = Integer.parseInt(request.getParameter("idCliente"));
            String nome = request.getParameter("nome");
            int CPF = Integer.parseInt(request.getParameter("CPF"));
            int numeroConta = Integer.parseInt(request.getParameter("numeroConta"));
            String dataNascimento =  request.getParameter("dataNascimento");
            int telefone = Integer.parseInt(request.getParameter("telefone"));
            int gerente = Integer.parseInt(request.getParameter("gerente"));
            
            

            Cliente cliente = new Cliente();
            cliente.setIdCliente(idCliente);
            cliente.setNome(nome);
            cliente.setCPF(CPF);
            cliente.setNumeroConta(numeroConta);
            cliente.setDataNascimento(dataNascimento);
            cliente.setTelefone(telefone);
            cliente.setGerente(gerente);

            Editar objEditar= new Editar();
            objEditar.editarUsuario(cliente);
        
        %>
        
        <script type="text/javascript">

            window.location.href="http://localhost:50302/projetomobile/inserir.jsp"
        </script>
    </body>
</html>
