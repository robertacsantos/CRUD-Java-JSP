<%-- 
    Document   : inserir
    Created on : 11/04/2020, 19:00:17
    Author     : Roberta
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="dao.Exibir"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir</title>
    </head>
    <body>
        
    
    <center>
        <h1>Inserir Valores</h1>
        
        <form action = "controller/inserir_controller.jsp">
            Código<input type="text" name ="idCliente"> <br>
            Nome<input type="text" name ="nome"> <br>
            CPF<input type="number" name ="CPF"> <br>
            numeroConta<input type="text" name ="numeroConta"> <br>
            dataNascimento<input type="text" name ="dataNascimento"> <br>
            telefone<input type="text" name ="telefone"> <br>
            gerente<input type="text" name ="gerente"> <br>
    
            <input type="submit" value="inserir">   
        </form>
        
        <hr>
        <%
            
            Exibir objExibir = new Exibir();
            List<Cliente> lista = objExibir.getValor();
            Iterator<Cliente> alista = lista.iterator();
        %>
        
        <table border = "1">
           <%
               while(alista.hasNext()){
               
                   Cliente cliente = new Cliente();
                   cliente = alista.next();
               
            %>
            <tr>
            
                <td><%=cliente.getIdCliente()%></td>
                <td><%=cliente.getNome()%></td>
                <td><%=cliente.getCPF()%></td>
                <td><%=cliente.getNumeroConta()%></td>
                <td><%=cliente.getDataNascimento()%></td>
                <td><%=cliente.getTelefone()%></td>
                <td><%=cliente.getGerente()%></td>
                
                <td>
                    <a href="editar.jsp?idCliente=<%=cliente.getIdCliente()%>">Editar</a>
                </td>
                
                 <td>
                    <a href="controller/deletar_controller.jsp?idCliente=<%=cliente.getIdCliente()%>">Excluir</a>
                </td>
               
 
    
    
            <%
                }
                
            %>
            </tr>
    
        </table> 
    </center>
    </body>
</html>
