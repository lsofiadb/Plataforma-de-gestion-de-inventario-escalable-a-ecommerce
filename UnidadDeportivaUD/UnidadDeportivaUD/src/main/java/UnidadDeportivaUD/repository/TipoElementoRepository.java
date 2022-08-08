package UnidadDeportivaUD.repository;

import UnidadDeportivaUD.model.TipoElemento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TipoElementoRepository extends JpaRepository<TipoElemento, String> {
}
