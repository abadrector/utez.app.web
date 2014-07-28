/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package web.model;

import java.io.Serializable;

/**
 * de cualquier select, necesitamos el valor (id) y la opción (name)
 * @author AdrianCruz
 */
public class SelectBean implements Serializable {        
    private String name;
    private String id;    
    public SelectBean() {
    }

    public SelectBean(String name, String id) {
        this.name = name;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }           
}
