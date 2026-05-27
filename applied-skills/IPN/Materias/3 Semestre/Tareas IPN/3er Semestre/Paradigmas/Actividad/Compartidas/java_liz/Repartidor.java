public class Repartidor extends Empleado {
    private String numeroLicencia;

    public Repartidor(String numeroLicencia) {
        this.numeroLicencia = numeroLicencia;
    }

    public Repartidor() {
    }

    public String getNumeroLicencia() {
        return numeroLicencia;
    }

    public void setNumeroLicencia(String numeroLicencia) {
        this.numeroLicencia = numeroLicencia;
    }

    
}
