package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Empleado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface EmpleadoRepository extends JpaRepository<Empleado,String> {

    List<Empleado> findByNOMEMPLEADO(String NOMEMPLEADO);
    Empleado findByAPELLEMPLEADO(String APELLEMPLEADO);


}
