/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utez.app.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utez.app.web.model.AreaBean;
import utez.app.web.model.AutorBean;
import utez.app.web.model.EditorialBean;
import utez.app.web.model.EscribeBean;
import utez.app.web.model.LibroBean;
import utez.app.web.util.DbConnection;
import utez.app.web.util.Executes;

/**
 *
 * @author AdrianCruz
 */
public class LibroDao implements GenericCRUD<LibroBean> {

    @Override
    public boolean insertar(LibroBean xBean) {
        boolean inserto=false;
        Connection con = DbConnection.getConnection();
      String insertar="INSERT [libro] "
              + " ([isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) "
              + " VALUES (?,?,?,?,?,?)";                           
        try {
            PreparedStatement pst = con.prepareStatement(insertar);
            pst.setString(1, xBean.getIsbn());
            pst.setString(2, xBean.getTitulo());
            pst.setInt(3, xBean.getNum_pag());
            pst.setInt(4, xBean.getEditorial().getId());
            pst.setInt(5, xBean.getArea().getId());
            pst.setBoolean(6, xBean.isActivo());
            pst.executeUpdate();  
            ResultSet idLibroNuevo = Executes.consultar(con, "SELECT @@identity AS id;");
            int idLibro=0;
            if(idLibroNuevo.next()){
                idLibro=idLibroNuevo.getInt(1);
            }
            EscribeDao escribe =new EscribeDao();//insertamos los registros en tabla escribe
            EscribeBean bean=new EscribeBean();
            List<AutorBean> autores = xBean.getAutor();
            for (AutorBean autorBean : autores) {
              escribe.insertar(new EscribeBean(1,autorBean.getId(), idLibro, true));    
               ///   EscribeBean: id no se toma en cuenta pero debemos mandar1, y  activo es verdadero por default
            }            
            inserto=true;
            
        }catch(SQLTimeoutException ex){
            
        } catch (SQLException ex) {            
            Logger.getLogger(LibroDao.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
      return inserto;
    }
    
            
    @Override
    public List<LibroBean> consultar(String query) { 
        if(query==null || query.isEmpty()){            
            query="select li.*, ed.nombre as editorialNombre, ar.descripcion as areaDescripcion from libro li "
               + " INNER JOIN editorial ed ON li.editorial_id = ed.editorial_id "
               + " INNER JOIN area ar ON li.area_id=ar.area_id;";
        }
        List<LibroBean> lista=new ArrayList<LibroBean>();
        ResultSet lib = Executes.consultar(DbConnection.getConnection(), query);
        try {
            while(lib.next()){                
                String q="select es.activo AS escribeActivo, au.* from escribe es  "
                        + " INNER JOIN autor au ON es.libro_id = "+lib.getInt("libro_id")
                        + " AND es.autor_id = au.autor_id AND es.activo=1 AND au.activo=1;"; 
                System.out.println("---------"+q);
                ResultSet join = Executes.consultar(DbConnection.getConnection(), q);                
                List<AutorBean> autores=new ArrayList<AutorBean>();
                while(join.next()){
                    AutorBean autor=new AutorBean();
                    autor.setNombre(join.getString("nombre")); //sólo necesitamos el nombre del autor
                    autores.add(autor);//llenar lista de autores
                   }
                System.out.println("¨¨¨¨¨´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´");
                for (AutorBean au : autores) {
                    System.out.println(au.getNombre());
                }
                System.out.println("¨¨¨¨¨´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´");
                EditorialBean editorial=new EditorialBean();
                editorial.setNombre(lib.getString("editorialNombre"));//sólo necesitamos el nombre
                AreaBean area=new AreaBean();
                area.setDescripcion(lib.getString("areaDescripcion"));//sólo necesitamos la descripción
                //declarar e inicializar el LibroBean (libro):
                LibroBean libro=new LibroBean(
                  lib.getInt(1), lib.getString(2), lib.getString(3), lib.getInt(4), 
                  editorial, area, lib.getBoolean("activo"), autores);
               lista.add(libro); //llenar la lista de libros
            }
        } catch (SQLException ex) {
            Logger.getLogger(LibroDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        return lista;
    }

    @Override
    public boolean actualizar(LibroBean xBean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
