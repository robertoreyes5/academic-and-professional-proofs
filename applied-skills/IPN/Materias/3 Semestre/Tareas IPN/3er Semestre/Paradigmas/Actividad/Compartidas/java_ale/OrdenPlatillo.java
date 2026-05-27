public class OrdenPlatillo {

    private Platillo platillo;
    private Double cantidad;
    private Double total;

    public Platillo getPlatillo() {
        return platillo;
    } 

    public void setPlatillo(Platillo platillo) {
        this.platillo = platillo;
    }

    public Double getCantidad() {
        return cantidad;
    }

    public void setCantidad(Double cantidad) {
        this.cantidad=cantidad;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total=total;
    }

    @Override
    public String toString() {
        return platillo.getNombre()+ ", subtotal:" +platillo.getPrecio() + "x"+cantidad+"="+total;
    }
}
