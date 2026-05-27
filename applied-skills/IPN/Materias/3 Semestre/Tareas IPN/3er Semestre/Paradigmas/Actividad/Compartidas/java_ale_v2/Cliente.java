public class Cliente {
    public Cliente(Integer numeroCliente, String nombre, String direccion) {
        this.nombre = nombre;
        this.numeroCliente = numeroCliente;
        this.direccion = direccion;
    }

    public Cliente(){

    }

    private String nombre;
    private Integer numeroCliente;
    private String direccion;

    public void setNombre(String nombre){
        this.nombre = nombre;
    }

    public String getNombre(){
        return this.nombre;
    }

    public Integer getNumeroCliente() {
        return numeroCliente;
    }

    public void setNumeroCliente(Integer numeroCliente) {
        this.numeroCliente = numeroCliente;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    @Override
    public String toString() {
        return "Cliente [nombre=" + this.nombre + ", numeroCliente=" + numeroCliente + ", direccion=" + direccion + "]";
    }

  
    
}

