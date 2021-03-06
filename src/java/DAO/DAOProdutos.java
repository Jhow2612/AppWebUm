/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Conexao.ConectaBanco;
import Model.Produtos;
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
public class DAOProdutos {
    Connection con;
    
    public List<Produtos> ListarProdutos()
    {
        
        List<Produtos> ListarP = new ArrayList<>();
        con = ConectaBanco.MetodoConexao();
        ResultSet rs;
        PreparedStatement ps;
        String sql = "select * from produto";
        
            try 
                {
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();
                    
                        while (rs.next()) 
                        {                        
                            Produtos p = new Produtos();
                            p.setId_produto(rs.getInt("id_produto"));
                            p.setEstoque(rs.getInt("estoque"));
                            p.setPreco(rs.getInt("preco"));
                            p.setDescricao(rs.getString("descricao"));
                            ListarP.add(p);
                        }
                } 
            catch (SQLException ex) 
                {
                    Logger.getLogger(DAOProdutos.class.getName()).log(Level.SEVERE, null, ex);
                }
        
        
     return ListarP;   
    }
    
    public Produtos BuscaProID(Produtos param)
    {
        Produtos objP = new Produtos();
        con = ConectaBanco.MetodoConexao();
        String sql = "select * from produto where id_produto=?";
        PreparedStatement ps;
        
        try 
            {
                ps = con.prepareStatement(sql);
                ps.setInt(1, param.getId_produto());
                ResultSet rs = ps.executeQuery();
                    while(rs.next())
                    {
                        objP.setId_produto(rs.getInt("id_produto"));
                        objP.setDescricao(rs.getString("descricao"));
                        objP.setEstoque(rs.getInt("estoque"));
                        objP.setPreco(rs.getInt("preco"));
                        
                    }
                
            } 
        catch (SQLException ex) 
            {
                Logger.getLogger(DAOProdutos.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return objP;
        
    }
    
}
