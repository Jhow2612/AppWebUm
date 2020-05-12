/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Conexao.ConectaBanco;
import Model.Usuarios;
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
public class CtrUsuarios {
    
    Connection con;
    
    public List<Usuarios> ListarUsuario(Usuarios u)
    {
        //Não escreva pra cima
        List<Usuarios> L = new ArrayList<Usuarios>();
        String sql = "select * from usuarios where login=? and senha=? ";
        PreparedStatement ps;
        ResultSet rs;
        
        con = ConectaBanco.MetodoConexao();        
            try 
            {
                ps = con.prepareStatement(sql);
            } 
            catch (SQLException ex) 
            {
                Logger.getLogger(CtrUsuarios.class.getName()).log(Level.SEVERE, null, ex);
            }
       
                
        return L;
    }
    
}
