public class Cliente extends Persona{

    private Integer numeroCliente;


    
    public Cliente(Integer numeroCliente, String nombre,  String direccion) {
        setNombre(nombre);         
        this.numeroCliente = numeroCliente;
        setDireccion(direccion);
    }

    
    public Cliente() {
        
    }

    public Double getDescuento(Double total){
        return 0.0;
    }



    public Integer getNumeroCliente() {
        return numeroCliente;
    }

    public void setNumeroCliente(Integer numeroCliente) {
        this.numeroCliente = numeroCliente;
    }

    @Override
    public String toString() {
        return "Cliente [nombre=" + getNombre() + ", numeroCliente=" + numeroCliente + ", direccion=" + getDireccion() + "]";
    }

  
    
}
