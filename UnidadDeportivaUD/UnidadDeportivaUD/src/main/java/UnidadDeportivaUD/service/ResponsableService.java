package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Empleado;
import UnidadDeportivaUD.model.Estudiante;
import UnidadDeportivaUD.model.Responsable;
import UnidadDeportivaUD.repository.ResponsableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

        //falta decir que sean cursos porque este filtro es para asistencia docente y el solo dicta CUs
        List<Responsable> cursosRetorno = new ArrayList<Responsable>();


        if(cursosACargo.size() > 0){
            for( int i = 0; i<cursosACargo.size(); i++){
                if(cursosACargo.get(i).getProgramacion().getActividad().getIDACTIVIDAD().equals("CU")){
                    cursosRetorno.add(cursosACargo.get(i));
                }
            }
            return cursosRetorno;
        }else{
            return null;
        }

    }

    public List<Responsable> obtenerPracticaLibrePorEstudiante(Estudiante estudiante){
        System.out.println("asdhasdhasudhasudhasduasudhasudhasdhuaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        System.out.println(estudiante);
        List<Responsable>  practicaACargo = responsableRepository.findByEstudiante(estudiante);
        //falta decir que sean cursos porque este filtro es para asistencia pasante y este solo tiene a cargo PRs

        List<Responsable> practicaRetorno = new ArrayList<Responsable>();

        if(practicaACargo.size() > 0){
            for( int i = 0; i<practicaACargo.size(); i++){
                if(practicaACargo.get(i).getProgramacion().getActividad().getIDACTIVIDAD().equals("PR")){
                    practicaRetorno.add(practicaACargo.get(i));
                }
            }
            System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
            System.out.println(practicaRetorno);
            return practicaRetorno;
        }else{
            return null;
        }
    }

}
