package org.hotel_paraiso;

import java.util.List;

public class Main {
    public static void main(String[] args) {
        ClienteDAO dao = new ClienteDAOImpl();
        
        System.out.println("=== SISTEMA DE GESTION: HOTEL PARAISO ===");
        System.out.println("\n--- REGISTRO DE CLIENTES HOSPEDADOS ---");
        System.out.println("CUI\t\t| NOMBRE\t\t\t| NACIONALIDAD");
        System.out.println("-------------------------------------------------------------------");
        
        List<Cliente> clientes = dao.obtenerCatalogoClientes();
        if (clientes.isEmpty()) {
            System.out.println("No se encontraron clientes en el sistema.");
        } else {
            for (Cliente c : clientes) {
                System.out.println(c.getCui() + "\t\t| " + c.getNombre() + "\t\t| " + c.getNacionalidad());
            }
        }
    }
}
  