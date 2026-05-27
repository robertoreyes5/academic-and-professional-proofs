public class Empleado extends Persona{
    
    private Integer numeroEmpleado;
    private Double salario;
    private String horario;
    
    public Empleado(Integer numeroEmpleado, Double salario, String horario) {
        this.numeroEmpleado = numeroEmpleado;
        this.salario = salario;
        this.horario = horario;
    }

    public Empleado() {
    }

    public Integer getNumeroEmpleado() {
        return numeroEmpleado;
    }

    public void setNumeroEmpleado(Integer numeroEmpleado) {
        this.numeroEmpleado = numeroEmpleado;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    
    
}
