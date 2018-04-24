package clases;


import java.io.Serializable;

public class Productos implements Serializable{
    
    private Integer idProducto;
    private String nombre; 
    private String categoria;
    private String descripcion; 
    private Integer existencia; 
    private Integer precio; 
    private String imagen; 
    
    public Productos(){
        
    }

    public Productos(Integer idProducto, String nombre, String categoria, String descripcion, Integer existencia, Integer precio, String imagen) {
        this.idProducto = idProducto;
        this.nombre = nombre;
        this.categoria = categoria;
        this.descripcion = descripcion;
        this.existencia = existencia;
        this.precio = precio;
        this.imagen = imagen;
        
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setExistencia(Integer existencia) {
        this.existencia = existencia;
    }

    public void setPrecio(Integer precio) {
        this.precio = precio;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public Integer getExistencia() {
        return existencia;
    }

    public Integer getPrecio() {
        return precio;
    }

    public String getImagen() {
        return imagen;
    }
    
}

