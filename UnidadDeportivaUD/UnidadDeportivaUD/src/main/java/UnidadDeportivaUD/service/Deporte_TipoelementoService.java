package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Deporte;
import UnidadDeportivaUD.model.Deporte_Tipoelemento;
import UnidadDeportivaUD.repository.Deporte_TipoelementoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class Deporte_TipoelementoService {

    @Autowired
    private Deporte_TipoelementoRepository deporte_tipoelementoRepository;

    public Optional<Deporte_Tipoelemento> filtrarPorDeporte(Deporte deporte){

        if(!deporte_tipoelementoRepository.findByDeporte(deporte).isEmpty()){
            return deporte_tipoelementoRepository.findByDeporte(deporte);
        }else{
            return null;
        }
    }


}
