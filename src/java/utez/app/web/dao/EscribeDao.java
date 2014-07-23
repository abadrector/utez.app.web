/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utez.app.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utez.app.web.model.EscribeBean;
import utez.app.web.util.DbConnection;

/**
 *
 * @author AdrianCruz
 */
public class EscribeDao implements GenericCRUD<EscribeBean>{

    @Override
    public boolean insertar(EscribeBean xBean) {
        boolean inserto=false;
        Connection con = DbConnection.getConnection();
        String insertar="INSERT [escribe] ( [autor_id], [libro_id], [activo]) VALUES (?, ?, ?)";        
        try {
            PreparedStatement pst = con.prepareStatement(insertar);
            pst.setInt(1, xBean.getIdAutor());
            pst.setInt(2, xBean.getIdLibro());
            pst.setBoolean(3, xBean.isActivo());
            pst.executeUpdate();
            inserto=true;
        } catch (SQLException ex) {
            Logger.getLogger(EscribeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return inserto;
    }

    @Override
    public List<EscribeBean> consultar(String query) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizar(EscribeBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
