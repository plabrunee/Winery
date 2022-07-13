/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package datos;

import java.sql.*;


public class Conexion {
    
    private static final String JDBC_URL="jdbc:mysql://localhost:3306/winery?useSSL=false&useTimeZone=true&serverTimeZone=UTC&allowPublicKeyRetrieval=true";
    private static final String JDBC_USR ="root";
    private static final String JDBC_PASS ="admin";
    
    public static Connection getConexion() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USR, JDBC_PASS);
    }
    
    public static void close(ResultSet rs) throws SQLException {
        rs.close();
    }
    
    public static void close(Statement st) throws SQLException {
        st.close();
    }
    
    public static void close(Connection cn) throws SQLException {
        cn.close();
    }
    
}
