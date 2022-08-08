package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "EQUIPO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Equipo {
    @Id @Column(name = "CONSEEQUIPO")
    private Long CONSEEQUIPO;
    @ManyToOne @JoinColumn(name = "CODEMPLEADO_FKEQUIPO")
    private Empleado empleado;
    @ManyToOne @JoinColumn(name = "IDDEPORTE_FKEQUIPO")
    private Deporte deporte;
    private Date FECHARESOL;

}
