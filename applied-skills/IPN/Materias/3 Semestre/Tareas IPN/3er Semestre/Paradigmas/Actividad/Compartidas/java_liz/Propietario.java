public class Propietario extends Persona {    
    private String rfc;
    

    public Propietario() {
    }

    public Propietario(String nombre) {
       setNombre(nombre);
        
    }


    public Propietario(String nombre, String rfc) {
        setNombre(nombre);
        this.rfc = rfc;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

   

    @Override
    public String toString() {
        return getNombre();
    }    
}
