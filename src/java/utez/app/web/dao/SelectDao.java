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
import utez.app.web.model.SelectBean;
import utez.app.web.util.DbConnection;
import utez.app.web.util.Executes;

/**
 *
 * @author AdrianCruz
 */
public class SelectDao implements GenericCRUD<SelectBean>{

    @Override
    public boolean insertar(SelectBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
/**
 * recupera de cualquier CATALOGO que contenga un id en columna1 y nombre/descripción en comumna2
 *  @author Adrián Cruz Hdez
 * @param query
 * @return lista de elementos SelectBean
 * SelectBean:  {private String name; private String id;}
 *               
 */
    @Override
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

    @Override
    public boolean actualizar(SelectBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
