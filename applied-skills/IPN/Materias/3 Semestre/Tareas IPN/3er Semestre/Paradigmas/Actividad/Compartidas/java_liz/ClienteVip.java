public class ClienteVip extends Cliente{
    public Double getDescuento(Double total){
        return total*0.3;
    }
}
