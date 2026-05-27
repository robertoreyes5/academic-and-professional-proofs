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
        this.cantidad = cantidad;
    }
    public Double getTotal() {
        return total;
    }
    public void setTotal(Double total) {
        this.total = total;
    }
    
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((platillo == null) ? 0 : platillo.hashCode());
        return result;
    }
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        OrdenPlatillo other = (OrdenPlatillo) obj;
        if (platillo == null) {
            if (other.platillo != null)
                return false;
        } else if (!platillo.equals(other.platillo))
            return false;
        return true;
    }

    @Override
    public String toString() {
        return platillo.getNombre() + ", subtotal:" +platillo.getPrecio() + "x"+cantidad+"="+ total;
    }

    
    
    
}
