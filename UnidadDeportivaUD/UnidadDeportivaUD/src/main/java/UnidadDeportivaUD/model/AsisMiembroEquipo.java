package UnidadDeportivaUD.model;

import UnidadDeportivaUD.model.llaves.primarias.compuestas.AsisMiembroEquipoPK;
import UnidadDeportivaUD.model.llaves.primarias.compuestas.MiembroEquipoPK;
import UnidadDeportivaUD.service.EquipoService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "ASISMIEMBROEQUIPO")
@AllArgsConstructor
@NoArgsConstructor
@Data
@IdClass(AsisMiembroEquipoPK.class)
public class AsisMiembroEquipo {

    @Id @ManyToOne
    @JoinColumn(name = "CONSECPROGRA_FKASISMIEMEQUIPO")
    private Programacion programacion;

    @Id
    @Column(name = "CONMIEMEQUIPO")
    private Long CONMIEMEQUIPO;

    @ManyToOne
    @JoinColumn(name = "CONSEEQUIPO_FKASISMIEMEQUIPO")
    private Equipo equipo;

    @ManyToOne
    @JoinColumn(name = "ITEMMIEMBRO_FKASISMIEMEQUIPO")
    private MiembroEquipo miembroEquipo;

}
