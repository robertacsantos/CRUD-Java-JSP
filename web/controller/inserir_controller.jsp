<%-- 
    Document   : inserir_controller
    Created on : 11/04/2020, 18:45:05
    Author     : Roberta
--%>

<%@page import="dao.Inserir"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>inserir controller</title>
    </head>
    <body>
        <%
            
            System.out.println("cpf " + request.getParameter("CPF"));
            int idCliente = Integer.parseInt(request.getParameter("idCliente"));
            String nome = request.getParameter("nome");
            String CPF = request.getParameter("CPF");
            
            int numeroConta = Integer.parseInt(request.getParameter("numeroConta"));
            String dataNascimento =  request.getParameter("dataNascimento");
            int telefone = Integer.parseInt(request.getParameter("telefone"));
            int gerente = Integer.parseInt(request.getParameter("gerente"));
            
            Inserir objInserir = new Inserir();
            objInserir.inserir(idCliente, nome, Integer.parseInt(CPF), numeroConta, dataNascimento, telefone, gerente);
        %>  
        
        <script type="text/javascript">
            window.location.href="http://localhost:50302/projetomobile/inserir.jsp"
        </script>
    </body>
</html>
