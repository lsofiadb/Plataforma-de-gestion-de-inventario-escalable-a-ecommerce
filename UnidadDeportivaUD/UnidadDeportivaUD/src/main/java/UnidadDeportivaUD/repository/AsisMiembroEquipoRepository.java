package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.AsisMiembroEquipo;
import UnidadDeportivaUD.model.llaves.primarias.compuestas.AsisMiembroEquipoPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AsisMiembroEquipoRepository extends JpaRepository<AsisMiembroEquipo, AsisMiembroEquipoPK> {
}
