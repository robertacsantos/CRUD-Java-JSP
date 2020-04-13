
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import common.DB_Connection;
import model.Cliente;

public class Deletar {
    
    public void deletar(int idCliente){
    
        DB_Connection objConn = new DB_Connection();
        Connection connection = objConn.get_connection();
        PreparedStatement ps = null;
        
        try{
            String query = "delete from cliente where idCliente=?";
            ps = connection.prepareStatement(query);
            ps.setInt(1, idCliente);
            ps.executeUpdate();
            
        }catch(Exception e){
            System.out.println("Deletar: Erro5" + e);
        }
    
    }
    
}
