package UnidadDeportivaUD.model.llaves.primarias.compuestas;

import UnidadDeportivaUD.model.Equipo;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@AllArgsConstructor
@NoArgsConstructor
public class MiembroEquipoPK implements Serializable {

    private Equipo equipo;

    private Long ITEMMIEMBRO;

}
