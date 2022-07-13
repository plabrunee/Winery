/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

/**
 *
 * @author plabrunee
 */
public class Productos {
    
    private int id;
    private String marca;
    private String tipo;
    private int anio;
    private int stock;
    private double precio;

    public Productos(int id, String marca, String tipo, int anio, int stock, double precio) {
        this.id = id;
        this.marca = marca;
        this.tipo = tipo;
        this.anio = anio;
        this.stock = stock;
        this.precio = precio;
    }

    public Productos(String marca, String tipo, int anio, int stock, double precio) {
        this.marca = marca;
        this.tipo = tipo;
        this.anio = anio;
        this.stock = stock;
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public void setIdLibro(int id) {
        this.id = id;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Productos{" + ", marca=" + marca + ", tipo=" + tipo + ", año=" + anio + ", stock=" + stock + ", precio=" + precio + '}';
    }

}
