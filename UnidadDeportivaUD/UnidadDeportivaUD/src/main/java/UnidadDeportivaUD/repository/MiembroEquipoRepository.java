package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Equipo;
import UnidadDeportivaUD.model.Estudiante;
import UnidadDeportivaUD.model.MiembroEquipo;
import UnidadDeportivaUD.model.llaves.primarias.compuestas.MiembroEquipoPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MiembroEquipoRepository extends JpaRepository<MiembroEquipo, MiembroEquipoPK> {

    List<MiembroEquipo> findByEstudiante(Estudiante estudiante);
    List<MiembroEquipo> findByEquipo(Equipo equipo);

}
