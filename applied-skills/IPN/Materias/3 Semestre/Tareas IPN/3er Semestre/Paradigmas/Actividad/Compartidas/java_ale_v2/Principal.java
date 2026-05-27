import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Principal {
    public static void main(String[] args) {
        
        List<Cliente> clientes = new ArrayList<>();
        for (String[] dato : Datos.CLIENTES) {
          Cliente cliente = new Cliente(Integer.valueOf(dato[0]),dato[1],dato[2]);
          clientes.add(cliente);
        }

       List<Platillo> platillos = new ArrayList<>();
       for (String[] dato : Datos.PLATILLOS) {

          Platillo platillo = new Platillo();
          platillo.setNombre(dato[0]);
          platillo.setPrecio(Double.valueOf(dato[1]));
          platillo.setTipo(dato[2]);
          platillos.add(platillo);
        }

       List<Restaurante> restaurantes = new ArrayList<>();
       for (String[] dato : Datos.RESTAURANTES) {
   
         Restaurante restaurante = new Restaurante();
         restaurante.setNombre(dato[0]);
         restaurante.setRfc(dato[2]);
   
         Propietario propietario = new Propietario();
         propietario.setNombre(dato[1]);
         restaurante.setPropietario(propietario);
   
         restaurantes.add(restaurante);
       }

          // Crear instancias de Orden

            Orden orden1  = new Orden();
            orden1.setNumeroOrden(1);
            orden1.setCliente(clientes.get(0));
            orden1.setRestaurante(restaurantes.get(0));
            orden1.setFecha(LocalDate.now());
            
            orden1.agregaOrden(platillos.get(0), 1.0);
            orden1.agregaOrden(platillos.get(1), 2.0);
            orden1.agregaOrden(platillos.get(2), 3.0);
            orden1.agregaOrden(platillos.get(1), 2.0);

            
            orden1.imprimeOrden();

            Orden orden2  = new Orden();
            orden2.setNumeroOrden(2);
            orden2.setCliente(clientes.get(0));
            orden2.setRestaurante(restaurantes.get(1));
            orden2.setFecha(LocalDate.now());
            
            orden2.agregaOrden(platillos.get(2), 1.0);
            orden2.agregaOrden(platillos.get(3), 3.0);
            orden2.agregaOrden(platillos.get(1), 4.0);
            orden2.agregaOrden(platillos.get(4), 2.0);

            
            orden2.imprimeOrden();

            Orden orden3  = new Orden();
            orden3.setNumeroOrden(3);
            orden3.setCliente(clientes.get(0));
            orden3.setRestaurante(restaurantes.get(2));
            orden3.setFecha(LocalDate.now());
            
            orden3.agregaOrden(platillos.get(2), 1.0);
            orden3.agregaOrden(platillos.get(5), 2.0);
            orden3.agregaOrden(platillos.get(7), 3.0);
            orden3.agregaOrden(platillos.get(1), 4.0);
            
            orden3.imprimeOrden();

            
            Orden orden4  = new Orden();
            orden4.setNumeroOrden(4);
            orden4.setCliente(clientes.get(0));
            orden4.setRestaurante(restaurantes.get(1));
            orden4.setFecha(LocalDate.now());
            
            orden4.agregaOrden(platillos.get(8), 1.0);
            orden4.agregaOrden(platillos.get(5), 2.0);
            orden4.agregaOrden(platillos.get(4), 3.0);
            orden4.agregaOrden(platillos.get(2), 4.0);
            
            orden4.imprimeOrden();

            
            Orden orden5  = new Orden();
            orden5.setNumeroOrden(5);
            orden5.setCliente(clientes.get(0));
            orden5.setRestaurante(restaurantes.get(0));
            orden5.setFecha(LocalDate.now());
            
            orden5.agregaOrden(platillos.get(6), 1.0);
            orden5.agregaOrden(platillos.get(3), 2.0);
            orden5.agregaOrden(platillos.get(4), 3.0);
            orden5.agregaOrden(platillos.get(5), 4.0);
            
            orden5.imprimeOrden();
    }
}
