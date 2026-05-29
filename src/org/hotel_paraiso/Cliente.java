package org.hotel_paraiso;

public class Cliente {
    private long cui; // Es bigint en su SQL, por eso se usa long
    private String nombre;
    private String nacionalidad;

    public Cliente() {}

    public Cliente(long cui, String nombre, String nacionalidad) {
        this.cui = cui;
        this.nombre = nombre;
        this.nacionalidad = nacionalidad;
    }

    public long getCui() { return cui; }
    public void setCui(long cui) { this.cui = cui; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getNacionalidad() { return nacionalidad; }
    public void setNacionalidad(String nacionalidad) { this.nacionalidad = nacionalidad; }
}
