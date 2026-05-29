package org.hotel_paraiso;

import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList; 
import java.util.List;     

public class ClienteDAOImpl implements ClienteDAO {

    @Override
    public List<Cliente> obtenerCatalogoClientes() {
        List<Cliente> registros = new ArrayList<>();
        String sqlProcedimiento = "{call sp_ListarClientes()}"; 
        
        try (Connection con = Conexion.obtenerConexion();
             CallableStatement cstmt = con.prepareCall(sqlProcedimiento);
             ResultSet rs = cstmt.executeQuery()) {
            
            while (rs.next()) {
                registros.add(new Cliente(
                    rs.getLong("cui"),
                    rs.getString("nombre"),
                    rs.getString("nacionalidad")
                ));
            }
        } catch (SQLException e) {
            System.err.println("Error al invocar sp_ListarClientes: " + e.getMessage());
        }
        return registros;
    }

    @Override
    public boolean registrarClienteNuevo(Cliente cliente) {
        String sqlProcedimiento = "{call sp_InsertarCliente(?, ?, ?)}";
        try (Connection con = Conexion.obtenerConexion();
             CallableStatement cstmt = con.prepareCall(sqlProcedimiento)) {
            
            cstmt.setLong(1, cliente.getCui());
            cstmt.setString(2, cliente.getNombre());
            cstmt.setString(3, cliente.getNacionalidad());
            
            return cstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Error al invocar sp_InsertarCliente: " + e.getMessage());
            return false;
        }
    }
}
