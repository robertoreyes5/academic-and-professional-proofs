import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Tester {
    public static void main(String[] args) {
        Persona persona = new Persona("juan", "morales", "avenida sin numero");
        Contacto c1 = new Contacto("twitter", "@juanm");
        Contacto c2 = new Contacto("celular","122345");
        Contacto c3 = new Contacto("email","juan23@servermail.com");

        if(persona.agregarContacto(c1)){
            System.out.println("Se agrego el nuevo contacto");
        } else{
            System.out.println("No se agrego el nuevo contacto");
        }

        if(persona.agregarContacto(c2)){
            System.out.println("Se agrego el nuevo contacto");
        } else{
            System.out.println("No se agrego el nuevo contacto");
        }

        if(persona.agregarContacto(c1)){
            System.out.println("Se agrego el nuevo contacto");
        } else{
            System.out.println("No se agrego el nuevo contacto");
        }

        if(persona.agregarContacto(c1)){
            System.out.println("Se agrego el nuevo contacto");
        } else{
            System.out.println("No se agrego el nuevo contacto");
        }

        if(persona.agregarContacto(c3)){
            System.out.println("Se agrego el nuevo contacto");
        } else{
            System.out.println("No se agrego el nuevo contacto");
        }
        System.out.println(persona);

        if(persona.removerContacto(c1)){
            System.out.println("Se agrego el nuevo contacto");
        } else{
            System.out.println("No se agrego el nuevo contacto");
        }
        System.out.println(persona);
    }

}
