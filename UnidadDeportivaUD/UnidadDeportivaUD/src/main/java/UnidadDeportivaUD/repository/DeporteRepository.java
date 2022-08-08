package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Deporte;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeporteRepository extends JpaRepository<Deporte, String> {
}
