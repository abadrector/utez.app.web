/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import web.model.SelectBean;
import web.util.DbConnection;
import web.util.Executes;

/**
 *
 * @author AdrianCruz
 */
public class SelectDao {
    public List<SelectBean> consultar(String query) {
        List<SelectBean> lista=new ArrayList<SelectBean>();
        ResultSet rs = Executes.consultar(DbConnection.getConnection(), query);        
        try {
            while(rs.next()){
                SelectBean bean =new SelectBean();
                bean.setId(""+rs.getInt(1)); 
                bean.setName(rs.getString(2));                
                lista.add(bean); //agregamos el bean a la lista
            }
        } catch (SQLException ex) {
            Logger.getLogger(SelectDao.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        return lista;
    }

    
}
