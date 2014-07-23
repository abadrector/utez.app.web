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
import utez.app.web.model.AreaBean;
import utez.app.web.model.AutorBean;
import utez.app.web.util.DbConnection;
import utez.app.web.util.Executes;

/**
 *
 * @author AdrianCruz
 */
public class AreaDao implements GenericCRUD<AreaBean> {

    @Override
    public boolean insertar(AreaBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

        public AreaBean consultaId(int id){
        String query="select * from area where id="+id+";";        
        ResultSet rs = Executes.consultar(DbConnection.getConnection(), query);        
        AreaBean bean =new AreaBean();
        try {
            if(rs.next()){
               bean.setId(rs.getInt(1));
               bean.setDescripcion(rs.getString(2));
               bean.setActivo(rs.getBoolean(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AreaDao.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return bean;    
    }
    @Override
    public List<AreaBean> consultar(String query) {
        List<AreaBean> lista=new ArrayList<AreaBean>();
        ResultSet rs = Executes.consultar(DbConnection.getConnection(), query);        
        try {
            while(rs.next()){
                AreaBean bean=new AreaBean();
                bean.setId(rs.getInt(1));
                bean.setDescripcion(rs.getString(2));
                bean.setActivo(rs.getBoolean(3));
                lista.add(bean);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AreaDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    @Override
    public boolean actualizar(AreaBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
