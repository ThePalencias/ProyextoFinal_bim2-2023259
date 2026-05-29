package org.hotel_paraiso;

import java.util.List;

public interface ClienteDAO {
    List<Cliente> obtenerCatalogoClientes(); 
    boolean registrarClienteNuevo(Cliente cliente);
}
