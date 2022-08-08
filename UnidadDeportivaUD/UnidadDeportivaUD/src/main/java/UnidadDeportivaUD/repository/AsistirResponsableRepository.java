package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.AsistirResponsable;
import UnidadDeportivaUD.model.llaves.primarias.compuestas.AsistirResponsablePK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AsistirResponsableRepository extends JpaRepository<AsistirResponsable, AsistirResponsablePK> {
}
