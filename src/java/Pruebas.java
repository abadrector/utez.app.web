
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utez.app.web.util.DbConnection;
import utez.app.web.util.Executes;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author AdrianCruz
 */
public class Pruebas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String q="select es.activo, au.* from escribe es "
                + " INNER JOIN autor au ON es.libro_id = 2 "
                + " AND es.autor_id = au.autor_id;";
        System.out.println(DbConnection.getConnection());
        ResultSet rs = Executes.consultar(DbConnection.getConnection(), q);
        try {
            while(rs.next()){
                System.out.println(rs.getString("activo"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Pruebas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
