package com.kinalitosclothes.modelo;

public class MetodoPagos {
    private int codigoMetodoPago;
    private TipoMetodo tipoMetodoPago;
    private String entidadFinanciaera;
    private String moneda;
    
    public enum TipoMetodo {
        Tarjeta, Efectivo
    }

    public MetodoPagos() {
    }

    public MetodoPagos(int codigoMetodoPago, TipoMetodo tipoMetodoPago, String entidadFinanciaera, String moneda) {
        this.codigoMetodoPago = codigoMetodoPago;
        this.tipoMetodoPago = tipoMetodoPago;
        this.entidadFinanciaera = entidadFinanciaera;
        this.moneda = moneda;
    }

    public int getCodigoMetodoPago() {
        return codigoMetodoPago;
    }

    public void setCodigoMetodoPago(int codigoMetodoPago) {
        this.codigoMetodoPago = codigoMetodoPago;
    }

    public TipoMetodo getTipoMetodoPago() {
        return tipoMetodoPago;
    }

    public void setTipoMetodoPago(TipoMetodo tipoMetodoPago) {
        this.tipoMetodoPago = tipoMetodoPago;
    }

    public String getEntidadFinanciaera() {
        return entidadFinanciaera;
    }

    public void setEntidadFinanciaera(String entidadFinanciaera) {
        this.entidadFinanciaera = entidadFinanciaera;
    }

    public String getMoneda() {
        return moneda;
    }

    public void setMoneda(String moneda) {
        this.moneda = moneda;
    }
}