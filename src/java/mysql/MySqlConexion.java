package mysql;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;


public class MySqlConexion {
    
    public Statement stmt = null;
    public ResultSet rs= null;
    public Connection conn=null;
    
    public MySqlConexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String connectionUrl = "jdbc:mysql://localhost/sm?"
                    +"user=root&password=hola";
            conn = DriverManager.getConnection(connectionUrl);
        } catch (SQLException e) {
            System.out.println("SQL Exception: "+ e.toString());
        } catch (ClassNotFoundException cE) {
            System.out.println("Class Not Found Exception: "+
                    cE.toString());
        }
        
    }
    
    public int Actualizar(String query){
        //information_schema
        int rModif=0;
        try {
            stmt = conn.createStatement();
             rModif= stmt.executeUpdate(query);
        }
        catch (SQLException ex){
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("Error: " + ex.getErrorCode());
        }
        return rModif;
    }
    
    
    public void Consultar(String query){
        //information_schema
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
            if (stmt.execute(query)) {
                rs = stmt.getResultSet();
                rs.first();     
            }
        }
        catch (SQLException ex){
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("Error: " + ex.getErrorCode());
        }
    }
    
    public void closeRsStmt(){
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException sqlEx) { } // ignore
            rs = null;
        }
        if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException sqlEx) { } // ignore
                stmt = null;
         }
    }
      public Connection getConnection(){
            return conn;
        }
}

