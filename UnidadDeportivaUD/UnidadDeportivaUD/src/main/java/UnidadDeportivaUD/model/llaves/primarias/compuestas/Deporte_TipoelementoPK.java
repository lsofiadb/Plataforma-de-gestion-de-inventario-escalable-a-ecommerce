package UnidadDeportivaUD.model.llaves.primarias.compuestas;

import UnidadDeportivaUD.model.Deporte;
import UnidadDeportivaUD.model.TipoElemento;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@AllArgsConstructor
@NoArgsConstructor
public class Deporte_TipoelementoPK implements Serializable {

    private TipoElemento tipoElemento;

    private Deporte deporte;

}
