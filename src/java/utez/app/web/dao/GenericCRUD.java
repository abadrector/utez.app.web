/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utez.app.web.dao;

import java.util.List;

/**
 *
 * @author AdrianCruz
 */
public interface GenericCRUD<T> {
     boolean insertar(T xBean);
     List<T> consultar(String query);
     boolean actualizar(T xBean);
     boolean eliminar(String sql);
}





