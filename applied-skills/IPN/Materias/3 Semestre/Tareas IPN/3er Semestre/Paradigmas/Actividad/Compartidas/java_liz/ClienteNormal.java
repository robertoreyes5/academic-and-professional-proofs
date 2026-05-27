public class ClienteNormal extends Cliente {
    public Double getDescuento(Double total){
        return total * 0.05;
    }
}
