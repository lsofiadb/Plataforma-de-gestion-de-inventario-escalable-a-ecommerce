package UnidadDeportivaUD.controller;

import UnidadDeportivaUD.model.Empleado_Cargo;
import UnidadDeportivaUD.service.EmpleadoService;
import UnidadDeportivaUD.service.Empleado_CargoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/directorDeportivo")
public class DirectorDeportivoController {

    @Autowired
    private Empleado_CargoService empleado_cargoService;

    @Autowired
    private EmpleadoService empleadoService;

    /****************----------------------------GENERAR REPORTES DIRECTOR DEPORTIVO------------------*****************/

    @GetMapping("/validarDirectorDeportivo/{CODEMPLEADO}")
    public ResponseEntity<Empleado_Cargo> validarAuxiliar(@PathVariable String CODEMPLEADO){

        if(!empleadoService.getEmpleado(CODEMPLEADO).isEmpty()){
            return ResponseEntity.ok(empleado_cargoService.validarIngresoDirectorDeportivo(empleadoService.getEmpleado(CODEMPLEADO).get()));
        }else{
            return null;
        }
    }


}
