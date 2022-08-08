package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "DEPORTE_TIPOELEMENTO")
@AllArgsConstructor
@NoArgsConstructor
@Data
@IdClass(Deporte_Tipoelemento.class)
public class Deporte_Tipoelemento {

    @Id
    @ManyToOne @JoinColumn(name = "IDTIPOELEMENTO_FKDEPORTE_TIPOE")
    private TipoElemento tipoElemento;

    @Id
    @ManyToOne @JoinColumn(name = "IDDEPORTE_FKDEPORTE_TIPOELEMEN")
    private Deporte deporte;


}
