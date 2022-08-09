package UnidadDeportivaUD.service;

import UnidadDeportivaUD.model.Elemendeportivo;
import UnidadDeportivaUD.model.TipoElemento;
import UnidadDeportivaUD.repository.ElemendeportivoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ElemendeportivoService {

    @Autowired
    private ElemendeportivoRepository elemendeportivoRepository;


    public Optional<Elemendeportivo> filtarPorTipoElemento(TipoElemento tipoElemento){

        if(!elemendeportivoRepository.findByTipoElemento(tipoElemento).isEmpty()){
            return elemendeportivoRepository.findByTipoElemento(tipoElemento);
        }else{
            return null;
        }
    }

    public Optional<Elemendeportivo> obtenerElementoDeportivo(Long CONSECELEMENTO){
        return elemendeportivoRepository.findById(CONSECELEMENTO);
    }


    public Elemendeportivo actualizarEstadoElementoDeportivo(Elemendeportivo elemendeportivo){
        return elemendeportivoRepository.save(elemendeportivo);
    }

}
