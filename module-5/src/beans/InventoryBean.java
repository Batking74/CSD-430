package beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * JavaBean for managing database connections and retrieving inventory records
 * for the JSP application.
 */
public class InventoryBean {
    private String dbUrl = "jdbc:mysql://localhost:3306/your_database_name";
    private String dbUser = "your_username";
    private String dbPassword = "your_password";

    // Helper method to establish database connection
    private Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(dbUrl, dbUser, dbPassword);
    }

    /**
     * Retrieves all unique key values (item_id) to populate the HTML dropdown menu.
     */
    public List<Integer> getAllKeys() {
        List<Integer> keyList = new ArrayList<>();
        String query = "SELECT item_id FROM InventoryItems ORDER BY item_id";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            
            while (rs.next()) {
                keyList.add(rs.getInt("item_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return keyList;
    }

    /**
     * Retrieves a single complete data record matching the provided unique key.
     */
    public ResultSet getRecordByKey(int itemId) {
        try {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM InventoryItems WHERE item_id = ?");
            pstmt.setInt(1, itemId);
            return pstmt.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
