/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utez.app.web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utez.app.web.model.AutorBean;
import utez.app.web.model.EditorialBean;
import utez.app.web.util.DbConnection;
import utez.app.web.util.Executes;

/**
 *
 * @author AdrianCruz
 */
public class EditorialDao implements GenericCRUD<EditorialBean> {

    @Override
    public boolean insertar(EditorialBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public EditorialBean consultaId(int id){
        String query="select * from editorial where id="+id+";";        
        ResultSet rs = Executes.consultar(DbConnection.getConnection(), query);        
        EditorialBean bean =new EditorialBean();
        try {
            if(rs.next()){
               bean.setId(rs.getInt(1));
               bean.setNombre(rs.getString(2));
               bean.setActivo(rs.getBoolean(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(EditorialDao.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return bean;    
    }
    @Override
    public List<EditorialBean> consultar(String query) {
        List<EditorialBean> lista=new ArrayList<EditorialBean>();
        ResultSet rs = Executes.consultar(DbConnection.getConnection(), query);        
        try {
            while(rs.next()){
                EditorialBean bean =new EditorialBean();
                bean.setId(rs.getInt(1));
                bean.setNombre(rs.getString(2));
                bean.setActivo(rs.getBoolean(3));
                lista.add(bean);
            }
        } catch (SQLException ex) {
            Logger.getLogger(EditorialDao.class.getName()).log(Level.SEVERE, null, ex);
        } 
            
        return lista;
    }

    @Override
    public boolean actualizar(EditorialBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
