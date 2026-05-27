import java.time.LocalDate;
import java.util.List;

public class Orden {
    private Integer numeroOrden;
    private LocalDate fecha;
    private Restaurante restaurante;
    private Cliente cliente;
    private List<Platillo> platillos;

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
    public List<Platillo> getPlatillos() {
        return platillos;
    }
    public void setPlatillos(List<Platillo> platillos) {
        this.platillos = platillos;
    }

    @Override
    public String toString() {
        return "Orden [numeroOrden=" + numeroOrden + ", fecha=" + fecha + ", restaurante=" + restaurante + ", cliente="
                + cliente + ", platillos=" + platillos + "]";
    }

    
    
}
