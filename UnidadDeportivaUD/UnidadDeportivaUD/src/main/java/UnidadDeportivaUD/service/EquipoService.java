package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Equipo;
import UnidadDeportivaUD.repository.EquipoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EquipoService {

    @Autowired
    private EquipoRepository equipoRepository;

    public Optional<Equipo> findByID(Long CONSEEQUIPO){
        return equipoRepository.findById(CONSEEQUIPO);
    }

}
