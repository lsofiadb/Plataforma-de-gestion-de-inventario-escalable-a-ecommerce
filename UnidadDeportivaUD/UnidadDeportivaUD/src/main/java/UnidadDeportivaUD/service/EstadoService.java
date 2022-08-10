package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Estado;
import UnidadDeportivaUD.repository.EstadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EstadoService {

    @Autowired
    private EstadoRepository estadoRepository;

    public Estado obtenerEstadoPorId(String IDESTADO){
        return estadoRepository.findById(IDESTADO).get();
    }

    public Estado actualizarEstado(Estado estado){
        return estadoRepository.save(estado);
    }

}
