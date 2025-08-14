package com.kinalitosclothes.modelo;

import java.util.Date;

public class Facturas {

    private int codigoFactura;
    private Date fechaEmision;
    private Double descuentoAplicado;
    private Double totalFactura;
    private EstadoFactura estadoFactura;
    private FormaEntrega formaEntrega;
    private int codigoPedido;
    private int codigoUsuario;

    public enum EstadoFactura {
        Emitida, Anulada, Pagada
    }

    public enum FormaEntrega {
        Fisica, Electronica
    }

    public Facturas() {
    }

    public Facturas(int codigoFactura, Date fechaEmision, Double descuentoAplicado, Double totalFactura, EstadoFactura estadoFactura, FormaEntrega formaEntrega, int codigoPedido, int codigoUsuario) {
        this.codigoFactura = codigoFactura;
        this.fechaEmision = fechaEmision;
        this.descuentoAplicado = descuentoAplicado;
        this.totalFactura = totalFactura;
        this.estadoFactura = estadoFactura;
        this.formaEntrega = formaEntrega;
        this.codigoPedido = codigoPedido;
        this.codigoUsuario = codigoUsuario;
    }

    public int getCodigoFactura() {
        return codigoFactura;
    }

    public void setCodigoFactura(int codigoFactura) {
        this.codigoFactura = codigoFactura;
    }

    public Date getFechaEmision() {
        return fechaEmision;
    }

    public void setFechaEmision(Date fechaEmision) {
        this.fechaEmision = fechaEmision;
    }

    public Double getDescuentoAplicado() {
        return descuentoAplicado;
    }

    public void setDescuentoAplicado(Double descuentoAplicado) {
        this.descuentoAplicado = descuentoAplicado;
    }

    public Double getTotalFactura() {
        return totalFactura;
    }

    public void setTotalFactura(Double totalFactura) {
        this.totalFactura = totalFactura;
    }

    public EstadoFactura getEstadoFactura() {
        return estadoFactura;
    }

    public void setEstadoFactura(EstadoFactura estadoFactura) {
        this.estadoFactura = estadoFactura;
    }

    public FormaEntrega getFormaEntrega() {
        return formaEntrega;
    }

    public void setFormaEntrega(FormaEntrega formaEntrega) {
        this.formaEntrega = formaEntrega;
    }

    public int getCodigoPedido() {
        return codigoPedido;
    }

    public void setCodigoPedido(int codigoPedido) {
        this.codigoPedido = codigoPedido;
    }

    public int getCodigoUsuario() {
        return codigoUsuario;
    }

    public void setCodigoUsuario(int codigoUsuario) {
        this.codigoUsuario = codigoUsuario;
    }

    @Override
    public String toString() {
        return "Facturas{" + "\nCodigo Factura: " + codigoFactura
                + "\nFecha Emision: " + fechaEmision
                + "\nDescuento Aplicado: " + descuentoAplicado
                + "\nTotal Factura: " + totalFactura
                + "\nEstado Factura: " + estadoFactura
                + "\nForma Entrega: " + formaEntrega
                + "\nCodigo Pedido: " + codigoPedido
                + "\nCodigo Empleado: " + codigoUsuario + '}';
    }
}
