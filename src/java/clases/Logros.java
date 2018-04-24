/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Juan Manuel
 */
public class Logros {
    
    private Integer idLogro;
    private Integer desbloqueo; 
    private String nombre;
    private String descripcion;
    
    public Logros(){
        
    }

    public void setIdLogro(Integer idLogro) {
        this.idLogro = idLogro;
    }

    public void setDesbloqueo(Integer desbloqueo) {
        this.desbloqueo = desbloqueo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getIdLogro() {
        return idLogro;
    }

    public Integer getDesbloqueo() {
        return desbloqueo;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }
    
    
    
}
