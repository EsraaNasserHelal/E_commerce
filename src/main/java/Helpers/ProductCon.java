
package Helpers;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Esraa
 */
public class ProductCon {
    private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(connection == null){
            Class.forName("org.postgresql.Driver");
            connection=DriverManager.getConnection("jdbc:postgresql://localhost:5432/Cart","postgres","123");
            System.out.print("database connected");
        }
        return connection;
    }
}
