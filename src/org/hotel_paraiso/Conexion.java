package org.hotel_paraiso;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    // Apuntando directo a la BD de tu amigo
    private static final String URL = "jdbc:mysql://localhost:3306/script_db_DDL_kenneth_palencia_in4cm";
    private static final String USER = "root";
    private static final String PASSWORD = "MiguelAngel2009"; // Usa tu contraseña local de MySQL

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
