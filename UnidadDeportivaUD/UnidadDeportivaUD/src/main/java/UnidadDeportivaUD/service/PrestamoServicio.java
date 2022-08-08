package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Prestamo;
import UnidadDeportivaUD.repository.PrestamoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PrestamoServicio {

    @Autowired
    private PrestamoRepository prestamoRepository;

    public Prestamo guardar(Prestamo prestamo){
        return prestamoRepository.save(prestamo);
    }

}
