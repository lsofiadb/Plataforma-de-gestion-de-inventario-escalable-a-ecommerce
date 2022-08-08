package UnidadDeportivaUD.controller;

import UnidadDeportivaUD.model.*;
import UnidadDeportivaUD.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/auxiliar")
public class AuxiliarController {

    @Autowired
    private Empleado_CargoService empleado_cargoService;
    @Autowired
    private EmpleadoService empleadoService;

    @Autowired
    private ResponsableService responsableService;

    @Autowired
    private Deporte_TipoelementoService deporte_tipoelementoService;

    @Autowired
    private ElemendeportivoService elemendeportivoService;


    @GetMapping("/validarAuxiliar/{CODEMPLEADO}")
    public ResponseEntity<Empleado_Cargo> validarAuxiliar(@PathVariable String CODEMPLEADO){

        if(!empleadoService.getEmpleado(CODEMPLEADO).isEmpty()){
            return ResponseEntity.ok(empleado_cargoService.validarIngresoAuxiliar(empleadoService.getEmpleado(CODEMPLEADO).get()));
        }else{
            return null;
        }
    }


    @GetMapping("/asistenciaDocente")
    public ResponseEntity<Empleado> getEmpleadoByNombreApellido(@RequestParam(name = "nombre") String nombre, @RequestParam(name = "apellido") String apellido){

        if(empleadoService.getEmpleadoByNombreYApellido(nombre, apellido).size()>0){
            return ResponseEntity.ok(empleadoService.getEmpleadoByNombreYApellido(nombre, apellido).get(0));
        }
        else{
            return null;
        }
    }

    @GetMapping("/consultarCursosPorDocente")
    public ResponseEntity<List<Responsable>> consultarCursosPorDocente(@RequestParam(name = "nombre") String nombre, @RequestParam(name = "apellido") String apellido){

        //consultar los cursos del docente si este existe
        if(getEmpleadoByNombreApellido(nombre, apellido) != null){
            System.out.println(getEmpleadoByNombreApellido(nombre, apellido).getBody());
            return ResponseEntity.ok(responsableService.obtenerCursosPorEmpleado(getEmpleadoByNombreApellido(nombre, apellido).getBody()));
        } else{
            return null;
        }

    }

    @GetMapping("/consultarElementosDeportivos")
    public ResponseEntity<Elemendeportivo> obtenerElementoDeportivo(@RequestParam(name = "nombre") String nombre, @RequestParam(name = "apellido") String apellido){
        if(getEmpleadoByNombreApellido(nombre, apellido) != null){

            List<Responsable> cursosAcargo = responsableService.obtenerCursosPorEmpleado(getEmpleadoByNombreApellido(nombre, apellido).getBody());
            Deporte deporte = new Deporte();
            deporte = cursosAcargo.get(0).getProgramacion().getDeporte();
            //filtro en tabla de rompimiento
            Deporte_Tipoelemento deporte_tipoelemento = new Deporte_Tipoelemento();
            deporte_tipoelemento = deporte_tipoelementoService.filtrarPorDeporte(deporte).get();

            //filtro en Elemendeportivo por tipoElemento de la tabla Deporte_TipoElemento
            Elemendeportivo elemendeportivo = new Elemendeportivo();
            elemendeportivo = elemendeportivoService.filtarPorTipoElemento(deporte_tipoelemento.getTipoElemento()).get();

            return ResponseEntity.ok(elemendeportivo);
        } else{
            return null;
        }
    }



}
