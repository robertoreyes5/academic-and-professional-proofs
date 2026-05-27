public class Contacto {
    private String tipo;
    private String valor;


    public Contacto(String tipo, String valor) {
        this.tipo = tipo;
        this.valor = valor;
    }

    

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
        result = prime * result + ((valor == null) ? 0 : valor.hashCode());
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
        Contacto other = (Contacto) obj;
        if (tipo == null) {
            if (other.tipo != null)
                return false;
        } else if (!tipo.equals(other.tipo))
            return false;
        if (valor == null) {
            if (other.valor != null)
                return false;
        } else if (!valor.equals(other.valor))
            return false;
        return true;
    }



    @Override
    public String toString() {
        return "Contacto [tipo=" + tipo + ", valor=" + valor + "]";
    }

    
    
}
