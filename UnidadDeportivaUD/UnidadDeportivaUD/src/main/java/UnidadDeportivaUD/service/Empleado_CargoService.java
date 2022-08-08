package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Empleado;
import UnidadDeportivaUD.model.Empleado_Cargo;
import UnidadDeportivaUD.repository.Empleado_CargoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class Empleado_CargoService {
    @Autowired
    private Empleado_CargoRepository empleado_cargoRepository;

    public List<Empleado_Cargo> obtenerTodosEmpleadoCargo(){
        return empleado_cargoRepository.findAll();
    }

    public Empleado_Cargo validarIngresoAuxiliar(Empleado empleado) {

        Empleado_Cargo empleado_cargo = empleado_cargoRepository.findByEmpleado(empleado);

        if(empleado_cargo.getCargo().getIDCARGO().equals("1")){ //es auxiliar
            System.out.println("HOLA ENCONTRE UN AUXILIAR");
            return empleado_cargo;
        } else {
            return null;
        }
    }
}
