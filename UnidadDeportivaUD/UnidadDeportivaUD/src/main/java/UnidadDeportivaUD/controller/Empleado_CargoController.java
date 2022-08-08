package UnidadDeportivaUD.controller;
import UnidadDeportivaUD.model.Empleado_Cargo;
import UnidadDeportivaUD.service.Empleado_CargoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/EmpleadoCargo")
public class Empleado_CargoController {
    @Autowired
    private Empleado_CargoService empleado_cargoService;

    @GetMapping("/getEmpleadoCargo")
    public ResponseEntity<List<Empleado_Cargo>> getEmpleadoCargo(){
        return ResponseEntity.ok(empleado_cargoService.obtenerTodosEmpleadoCargo());
    }

}
