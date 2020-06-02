/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Conexao.ConectaBanco;
import Model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jhona
 */
public class CtrCliente {
    
    Connection con;
    
    public List<Cliente> ListarCliente(Cliente u)
    {
        //Não escreva pra cima
        List<Cliente> L = new ArrayList<Cliente>();
        String sql = "select * from cliente where login=? and senha=? ";
        PreparedStatement ps;
        ResultSet rs;
        
        con = ConectaBanco.MetodoConexao();        
            try 
            {
                ps = con.prepareStatement(sql);
                ps.setString(1, u.getLogin());
                ps.setString(2, u.getSenha());
                rs = ps.executeQuery();
                    while(rs.next())
                    {
                        Cliente objU = new Cliente();
                        objU.setId_cliente(rs.getInt("id_cliente"));
                        objU.setLogin(rs.getString("login"));
                        objU.setSenha(rs.getString("senha"));
                        L.add(u);
                        
                    }
            } 
            catch (SQLException ex) 
            {
                Logger.getLogger(CtrCliente.class.getName()).log(Level.SEVERE, null, ex);
            }
       
                
        return L;
    }
    
}
