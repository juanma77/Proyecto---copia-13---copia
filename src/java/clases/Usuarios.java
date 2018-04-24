package clases;

import java.io.Serializable;

public class Usuarios implements Serializable{
    
    private Integer idUsuario; 
    private String nombre; //
    private String correo; //
    private String usuario;  //
    private String clave;  //
    private String seguridad; // 
    private Integer bloqueo; 
    private String sexo;
    //

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    
    //private String permisos = "cliente";
    //private boolean bloqueada = false; 
    
    public Usuarios(){
        
    }
    
    public Usuarios(Integer idUsuario, String nombre, String correo, String usuario, String clave, String seguridad, Integer bloqueo, String sexo){
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.correo = correo;
        this.usuario = usuario;
        this.clave = clave; 
        this.seguridad = seguridad;
        this.bloqueo = bloqueo; 
        this.sexo=sexo;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setUsuario(String usuario){
        this.usuario = usuario;
    }

    public void setClave(String clave){
        this.clave = clave;
    }

    public void setSeguridad(String seguridad){
        this.seguridad = seguridad;
    }

    public void setBloqueo(Integer bloqueo){
        this.bloqueo = bloqueo;
    }

    public Integer getIdUsuario(){
        return idUsuario;
    }

    public String getNombre(){
        return nombre;
    }

    public String getCorreo(){
        return correo;
    }

    public String getUsuario(){
        return usuario;
    }

    public String getClave(){
        return clave;
    }

    public String getSeguridad(){
        return seguridad;
    }

    public Integer getBloqueo(){
        return bloqueo;
    }
  
}
