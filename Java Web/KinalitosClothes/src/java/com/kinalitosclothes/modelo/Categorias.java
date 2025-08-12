package com.kinalitosclothes.modelo;

public class Categorias {
    private int codigoCategoria;
    private String nombreCategoria, descripcionCategoria;
    private Genero genero;
    private RangoEdad rangoEdad;

    public enum Genero {
        Hombre, Mujer, Unisex
    }

    public enum RangoEdad {
        Infantil, Juvenil, Adultos
    }

    public Categorias() {
    }

    public Categorias(int codigoCategoria, String nombreCategoria, String descripcionCategoria, Genero genero, RangoEdad rangoEdad) {
        this.codigoCategoria = codigoCategoria;
        this.nombreCategoria = nombreCategoria;
        this.descripcionCategoria = descripcionCategoria;
        this.genero = genero;
        this.rangoEdad = rangoEdad;
    }

    public int getCodigoCategoria() {
        return codigoCategoria;
    }

    public void setCodigoCategoria(int codigoCategoria) {
        this.codigoCategoria = codigoCategoria;
    }

    public String getNombreCategoria() {
        return nombreCategoria;
    }

    public void setNombreCategoria(String nombreCategoria) {
        this.nombreCategoria = nombreCategoria;
    }

    public String getDescripcionCategoria() {
        return descripcionCategoria;
    }

    public void setDescripcionCategoria(String descripcionCategoria) {
        this.descripcionCategoria = descripcionCategoria;
    }

    public Genero getGenero() {
        return genero;
    }

    public void setGenero(Genero genero) {
        this.genero = genero;
    }

    public RangoEdad getRangoEdad() {
        return rangoEdad;
    }

    public void setRangoEdad(RangoEdad rangoEdad) {
        this.rangoEdad = rangoEdad;
    }

    @Override
    public String toString() {
        return "Categorias{" + "Codigo Categoria: " + codigoCategoria
                + "\nNombre Categoria: " + nombreCategoria
                + "\nDescripcion Categoria=" + descripcionCategoria
                + "\nGenero: " + genero
                + "\nRango Edad: " + rangoEdad + '}';
    }

}
