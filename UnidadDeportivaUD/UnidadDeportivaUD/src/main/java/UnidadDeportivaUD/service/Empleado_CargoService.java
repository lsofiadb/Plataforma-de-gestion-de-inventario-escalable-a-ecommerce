package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Empleado_Cargo;
import UnidadDeportivaUD.repository.Empleado_CargoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class Empleado_CargoService {
    @Autowired
    private Empleado_CargoRepository empleado_cargoRepositorio;

    public List<Empleado_Cargo> obtenerTodosEmpleadoCargo(){
        return empleado_cargoRepositorio.findAll();
    }
}
