package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Empleado;
import UnidadDeportivaUD.model.Empleado_Cargo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Empleado_CargoRepository extends JpaRepository<Empleado_Cargo, Long> {

    public List<Empleado_Cargo> findByEmpleado(Empleado empleado);

}
