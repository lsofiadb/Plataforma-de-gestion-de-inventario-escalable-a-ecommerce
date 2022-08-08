package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Periodo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PeriodoRepository extends JpaRepository<Periodo, String> {
}
