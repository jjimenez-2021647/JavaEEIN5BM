package com.kinalitosclothes.modelo;

public class DetallePedidos {
    private int codigoDetalleP;
    private int cantidad;
    private Double subtotal;
    private String descripcion;
    private int codigoPedido;
    private int codigoProducto;

    public DetallePedidos() {
    }

    public DetallePedidos(int codigoDetalleP, int cantidad, Double subtotal, String descripcion, int codigoPedido, int codigoProducto) {
        this.codigoDetalleP = codigoDetalleP;
        this.cantidad = cantidad;
        this.subtotal = subtotal;
        this.descripcion = descripcion;
        this.codigoPedido = codigoPedido;
        this.codigoProducto = codigoProducto;
    }

    public int getCodigoDetalleP() {
        return codigoDetalleP;
    }

    public void setCodigoDetalleP(int codigoDetalleP) {
        this.codigoDetalleP = codigoDetalleP;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(Double subtotal) {
        this.subtotal = subtotal;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCodigoPedido() {
        return codigoPedido;
    }

    public void setCodigoPedido(int codigoPedido) {
        this.codigoPedido = codigoPedido;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }
}
