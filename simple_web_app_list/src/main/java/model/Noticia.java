/*
** This file contains the persistence class.
** Each class attribute is known as persistence attribute
 */
package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity(name="noticia")
public class Noticia { //persistence class
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  long id;  
 	
    @Column(name="noticia")
    private  String noticia;
	
    public Noticia(){}          //zero parameter constructor
    public String getNoticia() {   
        return noticia;
    }
    public void setNoticia(String noticia) {
        this.noticia = noticia;
    }
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }  
}
