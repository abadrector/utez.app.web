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
import utez.app.web.util.DbConnection;
import utez.app.web.util.Executes;

/**
 *
 * @author AdrianCruz
 */
public class AutorDao implements GenericCRUD<AutorBean>{

    @Override
    public boolean insertar(AutorBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public AutorBean consultaId(int id){
        String query="select * from autor where id="+id+";";        
        ResultSet rs = Executes.consultar(DbConnection.getConnection(), query);        
        AutorBean bean =new AutorBean();
        try {
            if(rs.next()){
               bean.setId(rs.getInt(1));
               bean.setNombre(rs.getString(2));
               bean.setActivo(rs.getBoolean(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AutorDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bean;    
    }
    @Override
    public List<AutorBean> consultar(String query) {
        List<AutorBean> lista=new ArrayList<AutorBean>();
        ResultSet rs = Executes.consultar(DbConnection.getConnection(), query);        
        try {
            while(rs.next()){
                AutorBean bean =new AutorBean();
                bean.setId(rs.getInt(1));
                bean.setNombre(rs.getString(2));
                bean.setActivo(rs.getBoolean(3));
                lista.add(bean); //agregamos el bean a la lista
            }
        } catch (SQLException ex) {
            Logger.getLogger(AutorDao.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        return lista;
    }

    @Override
    public boolean actualizar(AutorBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
