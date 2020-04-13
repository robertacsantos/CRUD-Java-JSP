
package dao;

import common.DB_Connection;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Cliente;

/**
 *
 * @author Roberta
 */
public class Editar {
    
    public Cliente pegarValorUsuario(int idCliente){
    
        DB_Connection objConn = new DB_Connection();
        Connection connection=objConn.get_connection();
        
        PreparedStatement ps = null;
        ResultSet rs = null;
        Cliente cliente = new Cliente();
        
        try{
           String query = "select * from cliente where idCliente=?";
           ps = connection.prepareStatement(query);
           ps.setInt(1, idCliente);
           rs = ps.executeQuery();
           
           while(rs.next()){
           
               cliente.setIdCliente(rs.getInt("idCliente"));
               cliente.setNome(rs.getString("nome"));
               cliente.setCPF(rs.getInt("CPF"));
               cliente.setNumeroConta(rs.getInt("numeroConta"));
               cliente.setDataNascimento(rs.getString("dataNascimento"));
               cliente.setTelefone(rs.getInt("telefone"));
               cliente.setGerente(rs.getInt("gerente")); 
               
           } 
        
        }catch(Exception e){
            System.out.println("Editar: Erro 2" + e);
        }
        
        return cliente;
    }
    
    public void editarUsuario(Cliente cliente){

        DB_Connection objConn = new DB_Connection();
        Connection connection = objConn.get_connection();
        PreparedStatement ps = null;
        
        try{
            String query = "update cliente set nome=?, CPF=?, numeroConta=?, dataNascimento=?, telefone=?, gerente=? where idCliente = ?";
            ps = connection.prepareStatement(query);
            ps.setString(1, cliente.getNome());
            ps.setInt(2, cliente.getCPF());
            ps.setInt(3, cliente.getNumeroConta());
            ps.setString(4, cliente.getDataNascimento());
            ps.setInt(5, cliente.getTelefone());
            ps.setInt(6, cliente.getGerente());
            ps.setInt(7, cliente.getIdCliente());
            ps.executeUpdate();
            
        
        }catch(Exception e){
            System.out.println("Editar: erro3" + e);
        
        }
    
    }
}
