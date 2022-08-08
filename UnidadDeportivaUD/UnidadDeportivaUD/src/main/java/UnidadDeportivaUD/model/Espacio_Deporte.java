package UnidadDeportivaUD.model;

import UnidadDeportivaUD.model.llaves.primarias.compuestas.Espacio_Deporte_PK;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "ESPACIO_DEPORTE")
@AllArgsConstructor
@NoArgsConstructor
@Data
@IdClass(Espacio_Deporte_PK.class)
public class Espacio_Deporte {

    @Id @ManyToOne @JoinColumn(name = "IDDEPORTE_FKESPACIO_DEPORTE")
    private Deporte deporte;

    @Id @ManyToOne @JoinColumn(name = "CODESPACIO_FKESPACIO_DEPORTE")
    private Espacio espacio;

}
