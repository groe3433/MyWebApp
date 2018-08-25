import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestDb {
    public static void main(String [] s) {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        String url = "jdbc:mysql://localhost:3306/c9";
        String username = "root";
        String password = "test1234";
        try {
            conn = DriverManager.getConnection(url, username, password);
            stmt = conn.createStatement();
            //rs = stmt.executeQuery("Select Version()");
            //if(rs.next()) {
            //    System.out.println(rs.getString(1));
            //}
            rs = stmt.executeQuery("Select * from Quotes");
            while(rs.next()) {
                System.out.println(rs.getString(2) + " " + rs.getString(3));
            }
        } catch(Exception ex) {
            System.out.println("Error: " + ex);
        } finally {
            try {
                if(rs != null) {
                    rs.close();
                }
                if(stmt != null) {
                    stmt.close();
                }
                if(conn != null) {
                    conn.close();
                }
            } catch(Exception ex) {
                System.out.println("Error: " + ex);
            }
        }
    }
}