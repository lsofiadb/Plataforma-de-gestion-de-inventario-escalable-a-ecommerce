package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.TipoEspacio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TipoEspacioRepository extends JpaRepository <TipoEspacio,String> {

}
