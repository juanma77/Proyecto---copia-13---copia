/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mysql;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Juan Manuel
 */
public class Consulta extends MySqlConexion{
    
     
    private String generoNombre;
    private String generoCorreo; 
    
    private String vecUsuarios[]; 
    
    
    private String puntajeSuma; 
    
    private String numeroUsuarios;
    private String puntajeMultiplicacion; 
    private String puntajeMinMult; 
    
    private String promSuma; 
    private String puntajeMinSuma;
    
    private String puntajeResta; 
    private String puntajeMinResta;
    
    private String nomSexo;
    private String correoSexo;
    
    private String nomMasculino;
    
    private String vecLogros[];
   
    
    
    
   
   
    
    
    public void Consulta(){
        
    }
    
    public void consultaFem(){
        PreparedStatement cons = null;
        ResultSet rs = null; 
        
         //MySqlConexion obj = new MySqlConexion();
        
     
        try{
            String consulta; 
            consulta = "call nombresCorreos()";
            cons = getConnection().prepareStatement(consulta); 
            rs = cons.executeQuery(); 
            
            
            
            this.vecUsuarios=new String[5];
            for(int j = 0; j<5; j++){
                rs.next(); 
                
                this.vecUsuarios[j]= rs.getString("nombre") + "  Correo: " + rs.getString("correo");
                
            }
            
            
            
            
            
            consulta  = "call puntajeAltoSuma();";
            cons = getConnection().prepareStatement(consulta); 
            rs = cons.executeQuery(); 
            rs.next();
            this.setPuntajeSuma(rs.getString("max(puntajeSuma)"));
            
            consulta = "call numeroUsuarios();";
            cons = getConnection().prepareStatement(consulta);
            rs = cons.executeQuery();
            rs.next();
            this.setNumeroUsuarios(rs.getString("count(nombre)"));
            
            
            consulta = "call puntajeAltoMultiplicacion();";
            cons = getConnection().prepareStatement(consulta);
            rs = cons.executeQuery();
            rs.next();
            this.setPuntajeMultiplicacion(rs.getString("max(puntajeMultiplicacion)"));
            
                    
            consulta = "call puntajeBajoMultiplicacion();";
            cons = getConnection().prepareStatement(consulta);
            rs = cons.executeQuery();
            rs.next();
            this.setPuntajeMinMult(rs.getString("min(puntajeMultiplicacion)"));
            
            
            consulta = "call losPromedios();";
            cons = getConnection().prepareStatement(consulta);
            rs = cons.executeQuery();
            rs.next();
            this.setPromSuma(rs.getString("avg(puntajeSuma)"));
            
           consulta = "call puntajeBajoSuma();";
           cons = getConnection().prepareStatement(consulta);
           rs = cons.executeQuery();
           rs.next();
           this.setPuntajeMinSuma(rs.getString("min(puntajeSuma)"));
            
           
           consulta = "call puntajeAltoResta();";
           cons = getConnection().prepareStatement(consulta);
           rs = cons.executeQuery();
           rs.next();
           this.setPuntajeResta(rs.getString("max(puntajeResta)"));
           
           consulta = "call puntajeBajoRestas();";
           cons = getConnection().prepareStatement(consulta);
           rs = cons.executeQuery();
           rs.next();
           this.setPuntajeMinResta(rs.getString("min(puntajeResta)"));
                       
            
           
            //VISTAS. 
            consulta = "select * from vistaf;";
            cons =getConnection().prepareStatement(consulta);
            rs = cons.executeQuery();
            rs.next();
            this.setNomSexo(rs.getString("nombre"));
            
            
            
            consulta = "select * from vistam;"; 
            cons =getConnection().prepareStatement(consulta);
            rs = cons.executeQuery();
            rs.next();
            this.setNomMasculino(rs.getString("nombre"));
            
            consulta = "select * from vistaLogros;"; 
            cons =getConnection().prepareStatement(consulta);
            rs = cons.executeQuery();
           // rs.next();
           // this.setNomLogro(rs.getString("nombreLogro"));
            
            this.vecLogros=new String[6];
            for(int i = 0; i<6; i++){
                rs.next(); 
                
                this.vecLogros[i]= rs.getString("nombreLogro");
                
            }
            
            
            
            
        }catch(Exception e){}
        
        
        
    }
    
    
    
    
    public String getGeneroNombre(){
        return generoNombre; 
    }
    
    public void setGeneroNombre(String nombre){
        this.generoNombre = nombre; 
    }
    
    public String getGeneroCorreo(){
        return generoCorreo; 
    }
    
     public void setGeneroCorreo(String correo){
        this.generoCorreo = correo; 
    }
    
    
    public String [] getVecUsuarios(){
        return vecUsuarios;
    }
    
    
    public String getPuntajeSuma(){
        return puntajeSuma; 
    }
    
    public void setPuntajeSuma(String psuma){
        this.puntajeSuma = psuma; 
    }
    
    public String getNumeroUsuarios(){
        return numeroUsuarios;
    }
    
    public void setNumeroUsuarios(String numUsuarios){
        this.numeroUsuarios = numUsuarios;
    }
    
    public String getPuntajeMultiplicacion(){
        return puntajeMultiplicacion; 
    }
    
    public void setPuntajeMultiplicacion(String pmulti){
        this.puntajeMultiplicacion = pmulti; 
    }
    
    
    public String getPuntajeMinMult(){
        return puntajeMinMult;
    }
    
    public void setPuntajeMinMult(String pminmult){
        this.puntajeMinMult = pminmult;
    }
        
    public String getPromSuma(){
        return promSuma;
    }
    
    public void setPromSuma(String promsuma){
        this.promSuma = promsuma;
    }
    
    public String getPuntajeMinSuma(){
        return puntajeMinSuma; 
    }
    
    public void setPuntajeMinSuma(String pminsuma){
        this.puntajeMinSuma = pminsuma;
    }
    
    public String getPuntajeResta(){
        return puntajeResta; 
    }
    
   public void setPuntajeResta(String presta){
       this.puntajeResta = presta; 
   }
   
   public String getPuntajeMinResta(){
       return puntajeMinResta; 
   }
   
   public void setPuntajeMinResta(String pminresta){
       this.puntajeMinResta = pminresta; 
   }
    
    public String getNomSexo(){
        return nomSexo;
    }
    
    public void setNomSexo(String nomsexo){
        this.nomSexo = nomsexo;
    }
    
     public String getCorreoSexo(){
        return correoSexo;
    }
    
    public void setCorreoSexo(String correosexo){
        this.correoSexo= correosexo;
    }
    
    public String getNomMasculino(){
        return nomMasculino;
    }
    
    public void setNomMasculino(String nommasculino){
        this.nomMasculino = nommasculino;
    }
    
    
    public String [] getVecLogros(){
        return vecLogros;
    }
    
    
   
    
}
