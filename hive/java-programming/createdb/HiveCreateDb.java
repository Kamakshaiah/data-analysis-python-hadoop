import java.sql.SQLException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;

public class HiveCreateDb {
   private static String driverName = "org.apache.hive.jdbc.HiveDriver";
   
   public static void main(String[] args) throws SQLException, Exception {
      // Register driver and create driver instance
   
   	try {
      Class.forName(driverName);
      // get connection
      
      Connection con = DriverManager.getConnection("jdbc:hive2://192.168.56.103:10002/default;transportMode=http;httpPath=cliservice", "", "");
      Statement stmt = con.createStatement();
      
      stmt.executeQuery("CREATE DATABASE userdb");
      System.out.println("Database userdb created successfully.");
      
      con.close();
      } catch (SQLException e) {
      	System.out.println(e.getMessage());
      
      } catch (Exception e) {
      	System.out.println(e.getMessage());
      
      } 
   }
}
