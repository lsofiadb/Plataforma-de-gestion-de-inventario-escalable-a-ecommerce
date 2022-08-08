package UnidadDeportivaUD.model;

import UnidadDeportivaUD.model.llaves.primarias.compuestas.Deporte_TipoelementoPK;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "DEPORTE_TIPOELEMENTO")
@AllArgsConstructor
@NoArgsConstructor
@Data
@IdClass(Deporte_TipoelementoPK.class)
public class Deporte_Tipoelemento {

    @Id
    @ManyToOne @JoinColumn(name = "IDTIPOELEMENTO_FKDEPORTE_TIPOE")
    private TipoElemento tipoElemento;

    @Id
    @ManyToOne @JoinColumn(name = "IDDEPORTE_FKDEPORTE_TIPOELEMEN")
    private Deporte deporte;


}
