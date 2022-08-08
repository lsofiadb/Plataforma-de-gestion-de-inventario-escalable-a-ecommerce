package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Empleado;
import UnidadDeportivaUD.model.Responsable;
import UnidadDeportivaUD.repository.ResponsableRepository;
import jdk.swing.interop.SwingInterOpUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

@Service
public class ResponsableService {

    @Autowired
    private ResponsableRepository responsableRepository;

    public List<Responsable> obtenerResponsables(){
        return responsableRepository.findAll();
    }

    //obtiene los cursos de cada empleado de la tabla responsable
    //Cursos a cargo incluye el pasante, docente a cargo, programacion(FALTA CONSULTAR EL espacio de este curso(elementos deportivos, estado), deporte, periodo, actividad, horas, fecha), deporte
    //falta validar las fechas
    public List<Responsable> obtenerCursosPorEmpleado(Empleado empleado){

        List<Responsable>  cursosACargo = responsableRepository.findByEmpleado(empleado);

        if(cursosACargo.size() > 0){
            return cursosACargo;
        }else{
            return null;
        }

    }

}
