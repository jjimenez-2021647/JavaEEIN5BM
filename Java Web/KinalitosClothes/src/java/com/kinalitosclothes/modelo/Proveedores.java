package com.kinalitosclothes.modelo;

public class Proveedores {

    private int codigoProveedor;
    private String nombreProveedor;
    private String telefonoProveedor;
    private String correoProveedor;
    private String paisProveedor;

    public Proveedores() {
    }

    public Proveedores(int codigoProveedor, String nombreProveedor, String telefonoProveedor, String correoProveedor, String paisProveedor) {
        this.codigoProveedor = codigoProveedor;
        this.nombreProveedor = nombreProveedor;
        this.telefonoProveedor = telefonoProveedor;
        this.correoProveedor = correoProveedor;
        this.paisProveedor = paisProveedor;
    }

    public int getCodigoProveedor() {
        return codigoProveedor;
    }

    public void setCodigoProveedor(int codigoProveedor) {
        this.codigoProveedor = codigoProveedor;
    }

    public String getNombreProveedor() {
        return nombreProveedor;
    }

    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }

    public String getTelefonoProveedor() {
        return telefonoProveedor;
    }

    public void setTelefonoProveedor(String telefonoProveedor) {
        this.telefonoProveedor = telefonoProveedor;
    }

    public String getCorreoProveedor() {
        return correoProveedor;
    }

    public void setCorreoProveedor(String correoProveedor) {
        this.correoProveedor = correoProveedor;
    }

    public String getPaisProveedor() {
        return paisProveedor;
    }

    public void setPaisProveedor(String paisProveedor) {
        this.paisProveedor = paisProveedor;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Proveedores{");
        sb.append("codigoProveedor=").append(codigoProveedor);
        sb.append(", nombreProveedor=").append(nombreProveedor);
        sb.append(", telefonoProveedor=").append(telefonoProveedor);
        sb.append(", correoProveedor=").append(correoProveedor);
        sb.append(", paisProveedor=").append(paisProveedor);
        sb.append('}');
        return sb.toString();
    }

}
