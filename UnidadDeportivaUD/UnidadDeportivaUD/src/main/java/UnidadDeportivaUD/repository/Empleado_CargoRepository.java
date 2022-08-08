package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Empleado_Cargo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Empleado_CargoRepository extends JpaRepository<Empleado_Cargo, Long> {
}
