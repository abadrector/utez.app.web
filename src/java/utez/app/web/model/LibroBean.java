/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utez.app.web.model;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author AdrianCruz
 */
public class LibroBean implements Serializable{
   private int id;
   private String isbn;
   private String titulo;      
   private int num_pag;
   private EditorialBean editorial;
   private AreaBean area;
   private boolean activo;
   private List<AutorBean> autor;

    public LibroBean() {
    }

    public LibroBean(int id, String isbn, String titulo, int num_pag, EditorialBean editorial, AreaBean area, boolean activo, List<AutorBean> autor) {
        this.id = id;
        this.isbn = isbn;
        this.titulo = titulo;
        this.num_pag = num_pag;
        this.editorial = editorial;
        this.area = area;
        this.activo = activo;
        this.autor = autor;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getNum_pag() {
        return num_pag;
    }

    public void setNum_pag(int num_pag) {
        this.num_pag = num_pag;
    }

    

    public EditorialBean getEditorial() {
        return editorial;
    }

    public void setEditorial(EditorialBean editorial) {
        this.editorial = editorial;
    }

    public AreaBean getArea() {
        return area;
    }

    public void setArea(AreaBean area) {
        this.area = area;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    public List<AutorBean> getAutor() {
        return autor;
    }

    public void setAutor(List<AutorBean> autor) {
        this.autor = autor;
    }
   

     
}
