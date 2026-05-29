package org.hotel_paraiso;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    public static final String URL = "jdbc:mysql://localhost:3306/nombre_de_tu_db?useUnicode=true&characterEncoding=UTF-8";
    private static final String USER = "root";
    private static final String PASSWORD = "Kenneth098*"; 

    public static Connection obtenerConexion() {
        Connection conexion = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("-> [OK] Enlace establecido con el sistema del Hotel.");
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("-> [ERROR] Falla en la conexion: " + e.getMessage());
        }
        return conexion;
    }
}
