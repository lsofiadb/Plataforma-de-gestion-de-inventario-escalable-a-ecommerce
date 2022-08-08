package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Deporte;
import UnidadDeportivaUD.repository.DeporteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeporteService {

    @Autowired
    private DeporteRepository deporteRepository;

    public List<Deporte> obtenerDeportes(){
        return deporteRepository.findAll();
    }

}
