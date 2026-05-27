
import java.util.HashSet;
import java.util.Set;


public class Persona {
    private String nombre;
    private String apellidos;
    private String direccion;
    private Set<Contacto> contactos;

    public Persona(String nombre, String apellidos, String direccion) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.direccion = direccion;
        this.contactos = new HashSet<>();
    }

    public Persona() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }


    public boolean agregarContacto(Contacto contacto) {
        boolean regreso = false;
        this.contactos.add(contacto);
        regreso = this.contactos.contains(contacto) ? true : false;
        return regreso;
    }

    public boolean removerContacto(Contacto contacto) {
        boolean regreso = false;
        if (this.contactos.contains(contacto)) {
            this.contactos.remove(contacto);
            regreso = true;
        }
        return regreso;
    }

 

    @Override
    public String toString() {
        return "Persona [nombre=" + nombre + ", apellidos=" + apellidos + ", direccion=" + direccion + ", contactos="
                + contactos + "]";
    }

    public Set<Contacto> getContactos() {
        return contactos;
    }



}
