package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.Deporte;
import UnidadDeportivaUD.model.Espacio;
import UnidadDeportivaUD.model.Espacio_Deporte;
import UnidadDeportivaUD.model.llaves.primarias.compuestas.Espacio_Deporte_PK;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Espacio_DeporteRepository extends JpaRepository<Espacio_Deporte, Espacio_Deporte_PK> {
}
