package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Estudiante;
import UnidadDeportivaUD.repository.EstudianteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EstudianteService {

    @Autowired
    private EstudianteRepository estudianteRepository;

    public Optional<Estudiante> findByID(String codigo){
        return estudianteRepository.findById(codigo);
    }

}
