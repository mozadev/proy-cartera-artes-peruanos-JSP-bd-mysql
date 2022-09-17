
package Config;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {

    public static Connection getConexionBD(){
        Connection cn=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost/entrada","root","");
            System.out.println("Se Conecto");
        }catch(Exception e){
            System.out.println("NO SE CONECTO");
        } return cn;
    }
    public static void main(String[] args) {
         Conexion obj = new Conexion();
        obj.getConexionBD();
}
    
}
