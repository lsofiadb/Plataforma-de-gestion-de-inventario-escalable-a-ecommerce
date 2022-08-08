package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Espacio_Deporte;
import UnidadDeportivaUD.repository.Espacio_DeporteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Espacio_DeporteService {

    @Autowired
    private Espacio_DeporteRepository espacio_deporteRepository;

    public List<Espacio_Deporte> obtenerEspaciosDeporte(){
        return espacio_deporteRepository.findAll();
    }

}
