import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Principal {
    public static void main(String[] args) {

        Cliente cliente1 = new Cliente();

        cliente1.setNombre("Juan");
        cliente1.setNumeroCliente(3);
        cliente1.setDireccion("Avenida Benito Juarez #27, centro");

        System.out.println(cliente1);

        // Agregar otro cliente

        Cliente cliente2 = new Cliente();

        cliente2.setNombre("Maria");
        cliente2.setNumeroCliente(2);
        cliente2.setDireccion("Reforma 43, Morelos");

        System.out.println(cliente2);
      

        // Crear una instancia de restaurante
        Restaurante restaurante1 = new Restaurante();
        restaurante1.setNombre("El mesón");
        restaurante1.setRfc("RDF12123123");
       
        // crear una instancia de propietario
        Propietario propietario1 = new Propietario();
        propietario1.setNombre("Don Pancho");

        restaurante1.setPropietario(propietario1);

        System.out.println(restaurante1);

      // Crear una instancia de restaurante
        Restaurante restaurante2 = new Restaurante();
        restaurante2.setNombre("El fogón");
        restaurante2.setRfc("ELF12123123");
        restaurante2.setPropietario(propietario1);

        System.out.println(restaurante2);


        // Crear una instancia de restaurante
        Restaurante restaurante3 = new Restaurante();
        restaurante3.setNombre("Doña Mary - Comida corrida");
        restaurante3.setRfc("DMC12123123");
        restaurante3.setPropietario(new Propietario());
        restaurante3.getPropietario().setNombre("María Lopéz Obrador");

        System.out.println(restaurante3);

// Crear instancias de  platillo

        Platillo arrozRojo = new Platillo();
        arrozRojo.setNombre("arroz rojo");
        arrozRojo.setPrecio(30.00);
        arrozRojo.setTipo("sopa");
        
        Platillo moleVerde = new Platillo();
        moleVerde.setNombre("mole verde");
        moleVerde.setPrecio(40.00);
        moleVerde.setTipo("plato fuerte");
        
        Platillo aguaSabor = new Platillo();
        aguaSabor.setNombre("Agua de jamaica");
        aguaSabor.setPrecio(20.00);
        aguaSabor.setTipo("Bebida");

        Platillo enchilada = new Platillo();
        enchilada.setNombre("Enchiladas con queso");
        enchilada.setPrecio(40.00);
        enchilada.setTipo("plato fuerte");
        
        // Crear instancias de Orden

        Orden orden1  = new Orden();
        orden1.setNumeroOrden(1);
        orden1.setCliente(cliente1);
        orden1.setRestaurante(restaurante1);
        orden1.setFecha(LocalDate.now());

        List<Platillo> detallePedido1 = new ArrayList<>();
        detallePedido1.add(enchilada);
        detallePedido1.add(aguaSabor);
        detallePedido1.add(arrozRojo);

        orden1.setPlatillos(detallePedido1);

        


        System.out.println(orden1);



        
    }
    
}
