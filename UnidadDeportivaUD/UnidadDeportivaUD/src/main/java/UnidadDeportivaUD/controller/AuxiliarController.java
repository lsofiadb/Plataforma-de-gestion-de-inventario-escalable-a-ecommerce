package UnidadDeportivaUD.controller;

import UnidadDeportivaUD.model.Empleado;
import UnidadDeportivaUD.service.EmpleadoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auxiliar")
public class AuxiliarController {

    @Autowired
    private EmpleadoService empleadoService;

    @GetMapping("/asistenciaDocente")
    public ResponseEntity<Empleado> getEmpleadoByNombreApellido(@RequestParam(name = "nombre") String nombre, @RequestParam(name = "apellido") String apellido){

        if(empleadoService.getEmpleadoByNombreYApellido(nombre, apellido).size()>0){
            return ResponseEntity.ok(empleadoService.getEmpleadoByNombreYApellido(nombre, apellido).get(0));
        }
        else{
            return null;
        }
    }



}
