import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Orden {
    private Integer numeroOrden;
    private LocalDate fecha;
    private Restaurante restaurante;
    private Cliente cliente;
    private List<OrdenPlatillo> ordenPlatillos = new ArrayList<>();
 //   private List<Platillo> platillos;

    Double subtotal=0.0;
    

    public Double getSubtotal() {
        return subtotal;
    }
    public void setSubtotal(Double subtotal) {
        this.subtotal = subtotal;
    }
 
    public Integer getNumeroOrden() {
        return numeroOrden;
    }
    public void setNumeroOrden(Integer numeroOrden) {
        this.numeroOrden = numeroOrden;
    }
    public LocalDate getFecha() {
        return fecha;
    }
    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }
    public Restaurante getRestaurante() {
        return restaurante;
    }
    public void setRestaurante(Restaurante restaurante) {
        this.restaurante = restaurante;
    }
    public Cliente getCliente() {
        return cliente;
    }
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public List<OrdenPlatillo> getOrdenPlatillos() {
        return ordenPlatillos;
    }
    public void setOrdenPlatillos(List<OrdenPlatillo> ordenPlatillos) {
        this.ordenPlatillos = ordenPlatillos;
    }

    @Override
    public String toString() {
        return "Orden [numeroOrden=" + numeroOrden + ", fecha=" + fecha + ", restaurante=" + restaurante + ", cliente="
                + cliente + ", platillos=" + ordenPlatillos + "]";
    } 

    

    public void agregaOrden(Platillo platillo, Double cantidad){
        OrdenPlatillo nuevaOrden = new OrdenPlatillo();
        nuevaOrden.setCantidad(cantidad);
        nuevaOrden.setPlatillo(platillo);
        nuevaOrden.setTotal(cantidad * platillo.getPrecio());
        
        if(this.ordenPlatillos.contains(nuevaOrden)){
            int posicion = this.ordenPlatillos.indexOf(nuevaOrden);
            OrdenPlatillo oldOrden = this.ordenPlatillos.get(posicion);
            oldOrden.setCantidad(cantidad + oldOrden.getCantidad());
            oldOrden.setTotal(oldOrden.getCantidad() * platillo.getPrecio());
        } else{
            this.ordenPlatillos.add(nuevaOrden);
        }

        subtotal=subtotal+nuevaOrden.getTotal();
    }

    public void imprimeOrden(){
        StringBuilder sb = new StringBuilder();
        sb.append("\nRESTAURANTE: ")
        .append(restaurante.getNombre())
        .append("\nNota de venta: ")
        .append(numeroOrden)
        .append("\nFecha")
        .append(fecha)
        .append("\nCliente: ")
        .append(cliente.getNombre())
        .append("\nDetalle de venta")
        .append("\n****\n");

        for(OrdenPlatillo item : ordenPlatillos){
            sb.append(item);
            sb.append("\n");
        }

         sb.append("\nSubtotal: ")
        .append(subtotal)
        .append("\nIVA: ")
        .append(subtotal*0.16)
        .append("\nTotal: ")
        .append(subtotal*1.16); 

        System.out.println(sb.toString());
    }
 
}
