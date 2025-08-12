package com.kinalitosclothes.modelo;

import java.util.Date;

public class Clientes {

    private int codigoCliente;
    private String nombreCliente;
    private String apellidoCliente;
    private String correoCliente;
    private String telefonoCliente;
    private String direccionCliente;
    private String nombreUsuario;
    private String contraseñaUsuario;
    private Date fechaRegistro;

    public Clientes() {
    }

    public Clientes(int codigoCliente, String nombreCliente, String apellidoCliente, String correoCliente, String telefonoCliente, String direccionCliente, String nombreUsuario, String contraseñaUsuario, Date fechaRegistro) {
        this.codigoCliente = codigoCliente;
        this.nombreCliente = nombreCliente;
        this.apellidoCliente = apellidoCliente;
        this.correoCliente = correoCliente;
        this.telefonoCliente = telefonoCliente;
        this.direccionCliente = direccionCliente;
        this.nombreUsuario = nombreUsuario;
        this.contraseñaUsuario = contraseñaUsuario;
        this.fechaRegistro = fechaRegistro;
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

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getContraseñaUsuario() {
        return contraseñaUsuario;
    }

    public void setContraseñaUsuario(String contraseñaUsuario) {
        this.contraseñaUsuario = contraseñaUsuario;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }
        
    /*        

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
    }*/

}
