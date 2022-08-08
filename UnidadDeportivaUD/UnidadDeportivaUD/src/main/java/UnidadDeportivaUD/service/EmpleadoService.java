package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Empleado;
import UnidadDeportivaUD.repository.EmpleadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class EmpleadoService {

    @Autowired
    private EmpleadoRepository empleadoRepository;

    public Optional<Empleado> getEmpleado(String CODEMPLEADO){
        return empleadoRepository.findById(CODEMPLEADO);
    }

    public List<Empleado> getEmpleados(){
        return empleadoRepository.findAll();
    }

    public List<Empleado> getEmpleadoByNombreYApellido(String NOMEMPLEADO, String APELLEMPLEADO){

        List <Empleado> empleadosPorNombre = empleadoRepository.findByNOMEMPLEADO(NOMEMPLEADO);

        List <Empleado> resultadoFiltro = new ArrayList<Empleado>();

        if(empleadosPorNombre.size()>0){
            for(int i = 0; i<empleadosPorNombre.size(); i++){

                if(empleadosPorNombre.get(i).getAPELLEMPLEADO().equals(APELLEMPLEADO)){
                    resultadoFiltro.add(empleadosPorNombre.get(i));
                }

            }
        }

        return resultadoFiltro;
    }

}
