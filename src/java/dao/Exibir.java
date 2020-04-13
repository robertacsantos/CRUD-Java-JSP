
package dao;

import common.DB_Connection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Cliente;

/**
 *
 * @author Roberta
 */
public class Exibir {
    
    public static void main(String[] args) {
        Exibir objExibir = new Exibir();
        objExibir.getValor();
    }
    
    public List<Cliente> getValor(){
    
        DB_Connection objConn = new DB_Connection();
        Connection connection = objConn.get_connection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        List<Cliente> lista = new ArrayList<Cliente>();
        
        try{
            
            String query = "select * from cliente";
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                Cliente cliente = new Cliente();
                System.out.println(rs.getString("nome"));
                System.out.println(rs.getInt("CPF"));
                System.out.println(rs.getInt("numeroConta"));
                System.out.println(rs.getString("dataNascimento"));
                System.out.println(rs.getInt("telefone"));
                
                cliente.setIdCliente(rs.getInt("IdCliente"));
                cliente.setNome(rs.getString("nome"));
                cliente.setCPF(rs.getInt("CPF"));
                cliente.setNumeroConta(rs.getInt("numeroConta"));
                cliente.setDataNascimento(rs.getString("dataNascimento"));
                cliente.setTelefone(rs.getInt("telefone"));
                cliente.setGerente(rs.getInt("gerente"));
                
                lista.add(cliente);
            
            }
        
        }catch(Exception e){
            System.out.println("Erro 4: Exibir" + e);
        
        }
        
        return lista;
    
    }
}
