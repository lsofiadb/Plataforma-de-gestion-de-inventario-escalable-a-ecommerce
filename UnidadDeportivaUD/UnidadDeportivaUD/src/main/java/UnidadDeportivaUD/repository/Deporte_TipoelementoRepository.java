package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Deporte;
import UnidadDeportivaUD.model.Deporte_Tipoelemento;
import UnidadDeportivaUD.model.llaves.primarias.compuestas.Deporte_TipoelementoPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface Deporte_TipoelementoRepository extends JpaRepository<Deporte_Tipoelemento, Deporte_TipoelementoPK> {

    Optional<Deporte_Tipoelemento> findByDeporte(Deporte deporte);

}
