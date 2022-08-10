package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Equipo;
import UnidadDeportivaUD.model.Estudiante;
import UnidadDeportivaUD.model.MiembroEquipo;
import UnidadDeportivaUD.model.llaves.primarias.compuestas.MiembroEquipoPK;
import UnidadDeportivaUD.repository.MiembroEquipoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class MiembroEquipoService {

    @Autowired
    private MiembroEquipoRepository miembroEquipoRepository;

    public Optional<MiembroEquipo> consultarMiembroEquipoPorEstudiante(Estudiante estudiante, Equipo equipo){

        List<MiembroEquipo> filtroPorEstudiante = new ArrayList<MiembroEquipo>();
        filtroPorEstudiante = miembroEquipoRepository.findByEstudiante(estudiante);

        MiembroEquipo miembroEquipo = new MiembroEquipo();
        miembroEquipo = filtroPorEstudiante.get(0);

        if(miembroEquipo.getEquipo() == equipo){
            return Optional.of(miembroEquipo);
        }else{
            return null;
        }

    }

}
