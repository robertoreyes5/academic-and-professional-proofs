public class Restaurante {
    private String nombre;
    private Propietario propietario;
    private String rfc;
    
    
    public Restaurante() {
        
    }
    public Restaurante(String nombre, Propietario propietario, String rfc) {
        this.nombre = nombre;
        this.propietario = propietario;
        this.rfc = rfc;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Propietario getPropietario() {
        return propietario;
    }
    public void setPropietario(Propietario propietario) {
        this.propietario = propietario;
    }
    public String getRfc() {
        return rfc;
    }
    public void setRfc(String rfc) {
        this.rfc = rfc;
    }
    
    @Override
    public String toString() {
        return "Restaurante [nombre=" + nombre + ", propietario=" + propietario + ", rfc=" + rfc + "]";
    }

    
}
