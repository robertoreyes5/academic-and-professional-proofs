public class Platillo {
    private String nombre;
    private Double precio;
    private String tipo;
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Double getPrecio() {
        return precio;
    }
    public void setPrecio(Double precio) {
        this.precio = precio;
    }
    public String getTipo() {
        return tipo;
    }
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    @Override
    public String toString() {
        return "Platillo [nombre=" + nombre + ", precio=" + precio + ", tipo=" + tipo + "]";
    }
    
    
}
