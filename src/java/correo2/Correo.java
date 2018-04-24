/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package correo2;

/**
 *

 */
public class Correo {
    
    private String nombre;
    private String apellido;
    private String email;
    //private String contrasena;
    private String destino;
    //private String asunto;
    private String mensaje;
    
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    /**
     * @return the email
     */
    public void setApellido(String apellido) {    
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the contrasena
     */
    /*public String getContrasena() {
        return contrasena;
    }*/

    /**
     * @param contrasena the contrasena to set
     */
    /*public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }*/

    /**
     * @return the destino
     */
    public String getDestino() {
        return destino;
    }

    /**
     * @param destino the destino to set
     */
    public void setDestino(String destino) {
        this.destino = destino;
    }

    /**
     * @return the asunto
     */
    /*public String getAsunto() {
        return asunto;
    }*/

    /**
     * @param asunto the asunto to set
     */
    /*public void setAsunto(String asunto) {
        this.asunto = asunto;
    }*/

    /**
     * @return the mensaje
     */
    public String getMensaje() {
        return mensaje;
    }

    /**
     * @param mensaje the mensaje to set
     */
    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    
    
    
}
