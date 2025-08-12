package com.kinalitosclothes.modelo;

import java.util.Date;

public class Usuarios {

    private int codigoUsuario;
    private String nombreUsuario, contraseñaUsuario;
    private TipoUsuarios tipoUsuario;
    private Date fechaRegistro;

    public enum TipoUsuarios {
        Empleado, Cliente
    }

    public Usuarios() {
    }

    public Usuarios(int codigoUsuario, String nombreUsuario, String contraseñaUsuario, TipoUsuarios tipoUsuario, Date fechaRegistro) {
        this.codigoUsuario = codigoUsuario;
        this.nombreUsuario = nombreUsuario;
        this.contraseñaUsuario = contraseñaUsuario;
        this.tipoUsuario = tipoUsuario;
        this.fechaRegistro = fechaRegistro;
    }

    public int getCodigoUsuario() {
        return codigoUsuario;
    }

    public void setCodigoUsuario(int codigoUsuario) {
        this.codigoUsuario = codigoUsuario;
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

    public TipoUsuarios getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(TipoUsuarios tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    @Override
    public String toString() {
        return "Usuario{" + "\nCodigo Usuario: " + codigoUsuario
                + "\nNombre Usuario: " + nombreUsuario
                + "\nClave de acceso: " + contraseñaUsuario
                + "\nTipo Usuario: " + tipoUsuario
                + "\nFecha Registro: " + fechaRegistro + '}';
    }

}
