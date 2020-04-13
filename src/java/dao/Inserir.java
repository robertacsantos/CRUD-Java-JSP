
package dao;

import common.DB_Connection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;


public class Inserir {
    
    
    
     public void inserir(int idCliente, String nome, int CPF, int numeroConta, String dataNascimento, int telefone, int gerente ){
    
        DB_Connection objConn = new DB_Connection();
        Connection connection = objConn.get_connection();
        PreparedStatement ps = null;
        
        
        try{
            String query = "insert into cliente(idCliente, nome, CPF, numeroConta, dataNascimento, telefone, gerente) values(?,?,?,?,?,?,?)";
            ps = connection.prepareStatement(query);
            ps.setInt(1, idCliente);
            ps.setString(2, nome);
            ps.setInt(3,  (int) CPF);
            ps.setInt(4, numeroConta);
            ps.setString(5, dataNascimento);
            ps.setInt(6, telefone);
            ps.setInt(7, gerente);
            
            ps.executeUpdate();
        
        }catch(Exception e){
            System.err.println("ClienteDAO: Erro1" + e);
        }
    }
     
    
}
