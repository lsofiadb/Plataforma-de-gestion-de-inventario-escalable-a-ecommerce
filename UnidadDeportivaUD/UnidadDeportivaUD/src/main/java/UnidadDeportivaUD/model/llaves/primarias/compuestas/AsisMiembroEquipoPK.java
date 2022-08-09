package UnidadDeportivaUD.model.llaves.primarias.compuestas;

import UnidadDeportivaUD.model.Programacion;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.io.Serializable;
@AllArgsConstructor
@NoArgsConstructor
public class AsisMiembroEquipoPK implements Serializable {

    private Programacion programacion;
    private Long CONMIEMEQUIPO;
}
