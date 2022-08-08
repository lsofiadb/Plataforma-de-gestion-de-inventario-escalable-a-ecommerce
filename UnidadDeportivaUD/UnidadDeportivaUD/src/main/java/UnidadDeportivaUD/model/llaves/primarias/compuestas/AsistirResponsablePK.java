package UnidadDeportivaUD.model.llaves.primarias.compuestas;

import UnidadDeportivaUD.model.Programacion;
import UnidadDeportivaUD.model.Responsable;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.io.Serializable;
@AllArgsConstructor
@NoArgsConstructor
public class AsistirResponsablePK implements Serializable {

    private Programacion programacion;

    private Responsable responsable;

    private Long CONSECASISRES;

}
