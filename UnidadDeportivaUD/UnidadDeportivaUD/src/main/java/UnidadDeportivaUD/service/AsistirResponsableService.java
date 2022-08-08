package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.AsistirResponsable;
import UnidadDeportivaUD.repository.AsistirResponsableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AsistirResponsableService {

    @Autowired
    private AsistirResponsableRepository asistirResponsableRepository;


    public AsistirResponsable guardar(AsistirResponsable asistirResponsable){
        return asistirResponsableRepository.save(asistirResponsable);
    }

}
