package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Empleado;
import UnidadDeportivaUD.model.Responsable;
import UnidadDeportivaUD.model.llaves.primarias.compuestas.ResponsablePK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResponsableRepository extends JpaRepository<Responsable, ResponsablePK> {

    List<Responsable> findByEmpleado(Empleado empleado);

}
