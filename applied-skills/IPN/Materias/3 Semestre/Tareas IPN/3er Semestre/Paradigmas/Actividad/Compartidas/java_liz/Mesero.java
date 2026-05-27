import java.util.ArrayList;
import java.util.Comparator;
import java.util.Collections;
import java.util.List;

public class Mesero extends Empleado {
    List<String> mesasAsignadas;

    public Mesero() {
        this.mesasAsignadas = new ArrayList<>();
    }

  

    public void agregarMesa(String mesa){
        if(!this.mesasAsignadas.contains(mesa)){
            this.mesasAsignadas.add(mesa);
        }
    }
   
    public void removerMesa(String mesa){
        if(this.mesasAsignadas.contains(mesa)){
            this.mesasAsignadas.remove(mesa);
        }
    }



    @Override
    public String toString() {
        Collections.sort(this.mesasAsignadas,Comparator.naturalOrder());
        return getNombre() + " " + getApellidos() + " "+ getNumeroEmpleado() + " " + this.mesasAsignadas.toString();
    }
    
    
    
}
