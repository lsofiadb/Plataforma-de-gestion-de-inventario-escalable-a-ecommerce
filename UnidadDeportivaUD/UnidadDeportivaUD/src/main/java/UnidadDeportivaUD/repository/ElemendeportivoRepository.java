package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Elemendeportivo;
import UnidadDeportivaUD.model.TipoElemento;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ElemendeportivoRepository extends JpaRepository<Elemendeportivo, Long> {

    Optional<Elemendeportivo> findByTipoElemento(TipoElemento tipoElemento);

}
