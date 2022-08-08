package UnidadDeportivaUD.model.llaves.primarias.compuestas;

import UnidadDeportivaUD.model.Deporte;
import UnidadDeportivaUD.model.Espacio;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@AllArgsConstructor
@NoArgsConstructor
public class Espacio_Deporte_PK implements Serializable {

    private Deporte deporte;
    private Espacio espacio;

}
