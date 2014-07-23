/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utez.app.web.model;

import java.io.Serializable;

/**
 *
 * @author AdrianCruz
 */
public class EscribeBean implements Serializable {
    private int id;
    private int idAutor;
    private int idLibro;
    private boolean activo;

    public EscribeBean() {
    }

    public EscribeBean(int id, int idAutor, int idLibro, boolean activo) {
        this.id = id;
        this.idAutor = idAutor;
        this.idLibro = idLibro;
        this.activo = activo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(int idAutor) {
        this.idAutor = idAutor;
    }

    public int getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(int idLibro) {
        this.idLibro = idLibro;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }
    
    
}
