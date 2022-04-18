import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;

public class HiveJDBCConnect {
	public static void main(String[] args) {
		Connection con = null;
		try {
			String conStr = "jdbc:hive2://localhost:10000/default";
			Class.forName("org.apache.hive.jdbc.HiveDriver");
			con = DriverManager.getConnection(conStr, "", "");
			Statement stmt = con.createStatement();
			stmt.executeQuery("show databases;");
			System.out.println("show database successfully.");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (con != null)
					con.close();
			} catch (Exception ex) {
			}
		}
	}
}

