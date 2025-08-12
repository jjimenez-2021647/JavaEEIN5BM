package com.kinalitosclothes.modelo;

public class Clientes {

    private int codigoCliente;
    private String nombreCliente;
    private String apellidoCliente;
    private String correoCliente;
    private String telefonoCliente;
    private String direccionCliente;
    private int codigoUsuario;

    public Clientes() {
    }

    public Clientes(int codigoCliente, String nombreCliente, String apellidoCliente, String correoCliente, String telefonoCliente, String direccionCliente, int codigoUsuario) {
        this.codigoCliente = codigoCliente;
        this.nombreCliente = nombreCliente;
        this.apellidoCliente = apellidoCliente;
        this.correoCliente = correoCliente;
        this.telefonoCliente = telefonoCliente;
        this.direccionCliente = direccionCliente;
        this.codigoUsuario = codigoUsuario;
    }

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getApellidoCliente() {
        return apellidoCliente;
    }

    public void setApellidoCliente(String apellidoCliente) {
        this.apellidoCliente = apellidoCliente;
    }

    public String getCorreoCliente() {
        return correoCliente;
    }

    public void setCorreoCliente(String correoCliente) {
        this.correoCliente = correoCliente;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public int getCodigoUsuario() {
        return codigoUsuario;
    }

    public void setCodigoUsuario(int codigoUsuario) {
        this.codigoUsuario = codigoUsuario;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Clientes{");
        sb.append("codigoCliente=").append(codigoCliente);
        sb.append(", nombreCliente=").append(nombreCliente);
        sb.append(", apellidoCliente=").append(apellidoCliente);
        sb.append(", correoCliente=").append(correoCliente);
        sb.append(", telefonoCliente=").append(telefonoCliente);
        sb.append(", direccionCliente=").append(direccionCliente);
        sb.append(", codigoUsuario=").append(codigoUsuario);
        sb.append('}');
        return sb.toString();
    }

}
